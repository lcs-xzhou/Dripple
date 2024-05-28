//
//  NotesColumnsView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftData
import SwiftUI

struct NotesColumnsView: View {
    
    // MARK: Stored properties
    @Environment(\.modelContext) var modelContext
    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
    
    // The title currently being added
    @State var newItemTitle = ""
    
    // The context currently being added
    @State var newItemContext = ""
    
    // The search text
    @State var searchText = ""
    
    // The list of note items
    @State var notes: [NotesItem] = exampleItems
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("Notes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.brown1)
                    .fontDesign(.rounded)
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: twoColumns) { $note in
                        
                        NotesItemView(currentItem: $note)
                            .tint(.brown1)
                            .contextMenu {
                                Button(
                                    "Delete",
                                    role: .destructive,
                                    action: {
                                        delete(note)
                                    }
                                )
                            }
                    }
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a date", text: $newItemTitle)
                    
                    Button("Add") {
                        // Add the new note item
                        createNotes(withTitle: $newItemTitle, withContext: $newItemContext)
                    }
                    .font(.caption)
                    .disabled(newItemTitle.isEmpty == true)
                }
                .padding(20)
            }
        }
        Spacer()
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
    
    func removeRows(at offsets: IndexSet) {
        for offset in offsets {
            modelContext.delete(notes[offset])
        }
    }
}

//#Preview {
//    NotesColumnsView(onSave: { _, _, _ in }, onDelete: {})
//}
