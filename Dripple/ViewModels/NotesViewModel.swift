//
//  NotesViewModel.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-29.
//

import Foundation
import Storage

@Observable
class NotesViewModel: Observable {
    
    // MARK: Stored properties
    // The list of notes items
    var notes: [NotesItem] = []
    
    // Track when note items are initially being fetched
    var fetchingNotes: Bool = false
    
    // MARK: Initializer(s)
    init(notes: [NotesItem] = []) {
        self.notes = notes
        Task {
            try await getNotes()
        }
    }
    
    // MARK: Functions
    func getNotes() async throws {
        
        // Indicate that app is in the process of getting note items from cloud
        fetchingNotes = true
        
        do {
            let results: [NotesItem] = try await supabase
                .from("notes")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.notes = results
            
            // Finished getting note items
            fetchingNotes = false
            
        } catch {
            debugPrint(error)
        }
        
    }
    
    func createNotes(withTitle title: String, withContext context: String, andImage providedImage: NotesItemImage?) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            // Upload an image.
            // If one was not provided to this function, then this
            // function call will return a nil value.
            let imageURL = try await uploadImage(providedImage)
            
            // Create the new note item instance
            // NOTE: The id will be nil for now
            let note = NotesItem(
                title: title,
                context: context,
                imageURL: imageURL
            )
            
            // Write it to the database
            do {
                
                // Insert the new note item, and then immediately select
                // it back out of the database
                let newlyInsertedItem: NotesItem = try await supabase
                    .from("notes")
                    .insert(note)   // Insert the note item created locally in memory
                    .select()       // Select the item just inserted
                    .single()       // Ensure just one row is returned
                    .execute()      // Run the query
                    .value          // Automatically decode the JSON into an instance of NotesItem
                
                // Finally, insert the note item instance we just selected back from the
                // database into the array used by the view model
                // NOTE: We do this to obtain the id that is automatically assigned by Supabase
                //       when the note item was inserted into the database table
                self.notes.append(newlyInsertedItem)
                
            } catch {
                debugPrint(error)
            }
        }
    }
    
    // We mark the function as "private" meaning it can only be invoked from inside
    // the view model itself (it will not be accessible from the view layer)
    private func uploadImage(_ image: NotesItemImage?) async throws -> String? {
        
        // Only continue past this point if an image was provided.
        // If an image was provided, obtain the raw image data.
        guard let imageData = image?.data else {
            return nil
        }
        
        // Generate a unique file path for the provided image
        let filePath = "\(UUID().uuidString).jpeg"
        
        // Attempt to upload the raw image data to the bucket at Supabase
        try await supabase.storage
            .from("notes_images")
            .upload(
                path: filePath,
                file: imageData,
                options: FileOptions(contentType: "image/jpeg")
            )
        
        return filePath
    }
    
    func downloadNotesItemImage(fromPath path: String) async throws -> NotesItemImage? {
        
        // Attempt to download an image from the provided path
        do {
            let data = try await supabase
                .storage
                .from("notes_images")
                .download(path: path)
            
            return NotesItemImage(rawImageData: data)
            
        } catch {
            debugPrint(error)
        }
        
        // If we landed here, something went wrong, so return nil
        return nil
        
    }
    
    func delete(_ note: NotesItem) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            do {
                
                // If an image exists for this note item...
                if let imageURL = note.imageURL, imageURL.isEmpty == false {
                    // ... then delete the image from the storage bucket first.
                    do {
                        let _ = try await supabase
                            .storage
                            .from("notes_images")
                            .remove(paths: [imageURL])
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
                try await self.getNotes()
                
            } catch {
                debugPrint(error)
            }
            
            
        }
        
    }
    
    func update(note updatedNote: NotesItem) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            do {
                
                // Run the update command
                try await supabase
                    .from("notes")
                    .update(updatedNote)
                    .eq("id", value: updatedNote.id!)   // Only update the row whose id
                    .execute()                          // matches that of the note being deleted
                
            } catch {
                debugPrint(error)
            }
            
        }
        
    }
}
