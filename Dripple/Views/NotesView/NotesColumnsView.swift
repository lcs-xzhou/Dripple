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
    @Query var notes: [NotesItem]
    @State private var presentingSheet = false
    @State private var selectedNote: NotesItem?
    
    var onSave: (String, UIImage?, String) -> Void
    var onDelete: () -> Void
    @State var newItemTitle = ""
    @State var newItemContext = ""
    @State private var showImagePicker = false
    @State private var inputImage: UIImage?
    @Bindable var currentItem: NotesItem
    
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
                            NotesItemView(currentItem: note) {
                                selectedNote = note
                                presentingSheet = true
                            }
                            .tint(.brown1)
                        }
                        .onDelete(perform: removeRows)
                    }
                    .sheet(isPresented: $presentingSheet) {
                        NotesDetailView(
                            currentItem: currentItem, onSave: { _, _, _ in },
                            onDelete: {}
                        )
                    }
                }
            }
            Spacer()
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
    modelContext.insert(note)
}

func removeRows(at offsets: IndexSet) {
    for offset in offsets {
        modelContext.delete(notes[offset])
    }
}

//#Preview {
//    NotesColumnsView(onSave: { _, _, _ in }, onDelete: {})
//}
