//
//  NotesViewModel.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-29.
//

import Foundation

@Observable
class NotesViewModel {
    
    // MARK: Stored properties
    // The list of to-do items
    var notes: [NotesItem]
    
    // MARK: Initializer(s)
    init(notes: [NotesItem] = []) {
        self.notes = notes
        Task {
            try await getNotes()
        }
    }
    
    // MARK: Functions
    func getNotes() async throws {
        
        do {
            let results: [NotesItem] = try await supabase
                .from("notes")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.notes = results
            
        } catch {
            debugPrint(error)
        }
        
    }
    
    func createNotes(withTitle title: String, withContext context: String) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            // Create the new note item instance
            // NOTE: The id will be nil for now
            let note = NotesItem(
                title: title,
                context: context
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
    
    func delete(_ note: NotesItem) {
        
        // Create a unit of asynchronous work to add the note item
        Task {
            
            do {
                
                // Run the delete command
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
