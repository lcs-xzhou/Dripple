//
//  UsersViewModel.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-31.
//

import Foundation
import Storage

@Observable
class UsersViewModel {
    
    // MARK: Stored properties
    // The list of users items
    var users: [UserItem]
    
    // Track when user items are initially being fetched
    var fetchingUsers: Bool = false
    
    // MARK: Initializer(s)
    init(users: [UserItem] = []) {
        self.users = users
        Task {
            try await getUsers()
        }
    }
    
    // MARK: Functions
    func getUsers() async throws {
        
        // Indicate that app is in the process of getting user items from cloud
        fetchingUsers = true
        
        do {
            let results: [UserItem] = try await supabase
                .from("notes")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.users = results
            
            // Finished getting note items
            fetchingUsers = false
            
        } catch {
            debugPrint(error)
        }
        
    }
    
    func createUsers(withUserName userName: String, withUserId userId: String, andUserImage providedUserImage: UserItemImage?) {
        
        // Create a unit of asynchronous work to add the user item
        Task {
            
            // Upload an image.
            // If one was not provided to this function, then this
            // function call will return a nil value.
            let userImage = try await uploadImage(providedUserImage)
            
            // Create the new note item instance
            // NOTE: The id will be nil for now
            let user = UserItem(
                userName: userName,
                userId: userId,
                userImage: userImage
            )
            
            // Write it to the database
            do {
                
                // Insert the new note item, and then immediately select
                // it back out of the database
                let newlyInsertedItem: UserItem = try await supabase
                    .from("notes")
                    .insert(user)   // Insert the note item created locally in memory
                    .select()       // Select the item just inserted
                    .single()       // Ensure just one row is returned
                    .execute()      // Run the query
                    .value          // Automatically decode the JSON into an instance of NotesItem
                
                // Finally, insert the user item instance we just selected back from the
                // database into the array used by the view model
                // NOTE: We do this to obtain the id that is automatically assigned by Supabase
                //       when the note item was inserted into the database table
                self.users.append(newlyInsertedItem)
                
            } catch {
                debugPrint(error)
            }
        }
    }
    
    // We mark the function as "private" meaning it can only be invoked from inside
    // the view model itself (it will not be accessible from the view layer)
    private func uploadImage(_ image: UserItemImage?) async throws -> String? {
        
        // Only continue past this point if an image was provided.
        // If an image was provided, obtain the raw image data.
        guard let imageData = image?.data else {
            return nil
        }
        
        // Generate a unique file path for the provided image
        let filePath = "\(UUID().uuidString).jpeg"
        
        // Attempt to upload the raw image data to the bucket at Supabase
        try await supabase.storage
            .from("user_images")
            .upload(
                path: filePath,
                file: imageData,
                options: FileOptions(contentType: "image/jpeg")
            )
        
        return filePath
    }
    
    func downloadUserItemImage(fromPath path: String) async throws -> UserItemImage? {
        
        // Attempt to download an image from the provided path
        do {
            let data = try await supabase
                .storage
                .from("user_images")
                .download(path: path)
            
            return UserItemImage(rawImageData: data)
            
        } catch {
            debugPrint(error)
        }
        
        // If we landed here, something went wrong, so return nil
        return nil
        
    }
    
    func delete(_ note: UserItem) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            do {
                
                // If an image exists for this note item...
                if let userImage = note.userImage, userImage.isEmpty == false {
                    // ... then delete the image from the storage bucket first.
                    do {
                        let _ = try await supabase
                            .storage
                            .from("user_images")
                            .remove(paths: [userImage])
                    } catch {
                        debugPrint(error)
                    }
                }
                
                // Run the delete command to remove notes item from database table.
                try await supabase
                    .from("notes")
                    .delete()
                    .eq("id", value: note.id!)  // Only delete the row whose id
                    .execute()                  // matches that of the note being deleted
                
                // Update the list of note items held in memory to reflect the deletion
                try await self.getUsers()
                
            } catch {
                debugPrint(error)
            }
            
            
        }
        
    }
    
    func update(user updatedUser: UserItem) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            do {
                
                // Run the update command
                try await supabase
                    .from("notes")
                    .update(updatedUser)
                    .eq("id", value: updatedUser.id!)   // Only update the row whose id
                    .execute()                          // matches that of the user being deleted
                
            } catch {
                debugPrint(error)
            }
            
        }
        
    }
}

