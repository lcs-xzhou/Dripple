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
    var users: [UsersItem] = []
    
    // Track when user items are initially being fetched
    var fetchingPortfolio: Bool = false
    
    // MARK: Initializer(s)
    // Make sure that all of the subclass's properties have a value
    init(users: [UsersItem] = []) {
        self.users = users
        Task {
            try await getPortfolio()
        }
    }
    
    // MARK: Functions    
    func getPortfolio() async throws {
        // Indicate that app is in the process of getting user items from cloud
        fetchingPortfolio = true
        do {
            let results: [UsersItem] = try await supabase
                .from("users") // From the users table
                .select() // Select all columns
                .order("id", ascending: true) // Select in the order of ascending id
                .execute() // Execute the order
                .value
            
            self.users = results
            
            // Finished getting users items
            fetchingPortfolio = false
        } catch {
            debugPrint(error)
        }
        
    }
    
    func createPortfolio(withName name: String, withAge age: String, withGender gender: String, withLocation location: String, withInfo info: String, andImage providedImage: UsersItemImage?) {
        
        // Create a unit of asynchronous work to add the user item
        Task {
            // Upload an image.
            // If one was not provided to this function, then this
            // function call will return a nil value.
            let user_image = try await uploadImage(providedImage)
            
            // Create the new users item instance
            // NOTE: The id will be nil for now
            let users = UsersItem(
                name: name,
                age: age,
                gender: gender,
                location: location,
                user_image: user_image, 
                info: info
            )
            
            // Write it to the database
            do {
                
                // Insert the new user item, and then immediately select
                // it back out of the database
                let newlyInsertedItem: UsersItem = try await supabase
                    .from("users")
                    .insert(users)   // Insert the users item created locally in memory
                    .select()       // Select the item just inserted
                    .single()       // Ensure just one row is returned
                    .execute()      // Run the query
                    .value          // Automatically decode the JSON into an instance of UsersItem
                
                // Finally, insert the users item instance we just selected back from the
                // database into the array used by the view model
                // NOTE: We do this to obtain the id that is automatically assigned by Supabase
                //       when the users item was inserted into the database table
                self.users.append(newlyInsertedItem)
                
            } catch {
                debugPrint(error)
            }
        }
    }
    
    // We mark the function as "private" meaning it can only be invoked from inside
    // the view model itself (it will not be accessible from the view layer)
    private func uploadImage(_ image: UsersItemImage?) async throws -> String? {
        
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
    
    func downloadUsersItemImage(fromPath path: String) async throws -> UsersItemImage? {
        // Attempt to download an image from the provided path
        do {
            let data = try await supabase
                .storage
                .from("user_images")
                .download(path: path)
            
            return UsersItemImage(rawImageData: data)
            
        } catch {
            debugPrint(error)
        }
        
        // If we landed here, something went wrong, so return nil
        return nil
    }
        
    func update(user updatedPortfolio: UsersItem) {
        
        // Create a unit of asynchronous work to add the users item
        Task {
            do {
                // Run the update command
                try await supabase
                    .from("users")
                    .update(updatedPortfolio)
                    .eq("id", value: updatedPortfolio.id!)   // Only update the row whose id
                    .execute()                          // matches that of the user being deleted
                
            } catch {
                debugPrint(error)
            }
        }
    }
}

