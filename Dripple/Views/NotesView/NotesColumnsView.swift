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
                        NavigationLink {
                            NotesDetailView()
                        } label: {
                            NotesItemView(item: note)
                        }
                        .tint(.brown1)
                    }
                    .onDelete(perform: deleteNotes)
                }
                .sheet(isPresented: $presentingSheet) {
                    NotesDetailView()
                }
                
                Spacer()
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "plus")
                        
                        // Add the new note item
                        createNotes(withTitle: newItemTitle, withPicture: picture, withContext: newItemContext)
                    }
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .foregroundColor(.brown1)
                }
            }
            
        }
    }
    // MARK: Functions
    func createNotes(withTitle title: String, withPicture picture: UIImage?, withContext context: String) {
        
        let note = NotesItem(
            title: title,
            picture: picture,
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
