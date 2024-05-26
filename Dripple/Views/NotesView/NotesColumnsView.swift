//
//  NotesColumnsView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesColumnsView: View {
    
    // MARK: Stored properties
    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
    @State var notes: [NotesItem] = exampleItems
    @State private var presentingSheet = false
    @State private var selectedNote: NotesItem?
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Notes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.brown1)
                    .fontDesign(.rounded)
                    .padding()
                
                LazyVGrid(columns: twoColumns) {
                    ForEach(notes) { note in
                        Button(action: {
                            selectedNote = note
                            presentingSheet = true
                        }); label: do {
                            NotesItemView(item: note)
                        }
                        .tint(.brown1)
                    }
                }
                .sheet(isPresented: $presentingSheet) {
                    NotesDetailView(onSave: { _, _, _ in })
                }
                Spacer()
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        NotesDetailView { title, picture, context in
                            createNotes(withTitle: title, withPicture: picture, withContext: context)
                        }
                    }) {
                        Image(systemName: "plus")
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .foregroundColor(.brown1)
                    }
                }
            }
            
        }
    }
    // MARK: Functions
    func createNotes(withTitle title: String, withPicture picture: UIImage?, withContext context: String) {
        
        let note = NotesItem(
            title: title,
            picture: picture?.jpegData(compressionQuality: 1.0),
            context: context
        )
        // Append to the array
        notes.append(note)
    }
    
    func delete(_ note: NotesItem) {
        notes.removeAll { currentItem in
            currentItem.id == note.id
        }
    }
}

#Preview {
    NotesColumnsView()
}
