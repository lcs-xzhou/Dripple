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
    }
    
    // MARK: Functions
    func createNotes(withTitle title: String, withContext context: String) {
        
        // Create the new note item instance
        let note = NotesItem(
            title: title,
            context: context
        )
        // Append to the array
        notes.append(note)
    }
    
    func delete(_ note: NotesItem) {
        
        // Remove the provided note item from the array
        notes.removeAll { currentItem in
            currentItem.id == note.id}
    }
}
