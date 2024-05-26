//
//  NotesColumnsView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesColumnsView: View {
    
    // MARK: Stored properties
    @Environment(\.dismiss) var dismiss

    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
    @State var notes: [NotesItem] = exampleItems
    @State private var presentingSheet = false
    @State private var selectedNote: NotesItem?
    
    var onSave: (String, UIImage?, String) -> Void
    var onDelete: () -> Void
    @State var newItemTitle = ""
    @State var newItemContext = ""
    @State private var showImagePicker = false
    @State private var inputImage: UIImage?
    
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
                    LazyVGrid(columns: twoColumns) {
                        ForEach(notes) { note in
                            NotesItemView(item: note) {
                                selectedNote = note
                                presentingSheet = true
                            }
                            .tint(.brown1)
                        }
                    }
                    .sheet(isPresented: $presentingSheet) {
                        NotesDetailView(
                            onSave: { _, _, _ in },
                            onDelete: {}
                        )
                        .toolbar {
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Save", action: {
                                    onSave(newItemTitle, inputImage, newItemContext)
                                    dismiss()
                                })
                                .foregroundColor(.brown1)
                                .disabled(newItemTitle.isEmpty || newItemContext.isEmpty)
                            }
                            ToolbarItem(placement: .cancellationAction) {
                                Button("Delete", action: {
                                    onDelete()
                                    dismiss()
                                })
                                .foregroundColor(.brown1)
                            }
                        }
                    }
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        presentingSheet = true
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
    NotesColumnsView(onSave: { _, _, _ in }, onDelete: {})
}
