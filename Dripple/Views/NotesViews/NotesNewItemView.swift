//
//  NotesNewItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-29.
//

import PhotosUI
import SwiftUI

struct NotesNewItemView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemTitle = ""
    @State var newItemContext = ""
    
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?
    
    // The actual image loaded from the selection that was made
    @State var newItemImage: NotesItemImage?
    
    // Access the view model through the environment
    @Environment(NotesViewModel.self) var viewModel
    
    // Binding to control whether this view is visible
    @Binding var showSheet: Bool
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Please enter a title", text: $newItemTitle)
                        .font(.custom("Chalkduster", size: 15))
                    
                    Button("Add") {
                        // Add the new note item
                        viewModel.createNotes(withTitle: newItemTitle, withContext: newItemContext, andImage: newItemImage)
                        
                        // Clear the stored property bound to the input textfield
                        newItemTitle = ""
                        // Clear the photo picker selection result
                        selectionResult = nil
                        // Clear the loaded photo
                        newItemImage = nil
                    }
                    .foregroundColor(.brown1)
                    .fontWeight(.semibold)
                    .font(.custom("Chalkduster", size: 15))
                    .disabled(newItemTitle.trimmingCharacters(in: .whitespaces).isEmpty == true)                }
                
                HStack {
                    
                    PhotosPicker(selection: $selectionResult, matching: .images) {
                        
                        // Has an image been loaded?
                        if let newItemImage = newItemImage {
                            
                            // Yes, show it
                            newItemImage.image
                                .resizable()
                                .scaledToFit()
                            
                        } else {
                            
                            // No, show an icon instead
                            Image(systemName: "photo.badge.plus")
                                .symbolRenderingMode(.multicolor)
                                .font(.custom("Chalkduster", size: 40))
                                .foregroundStyle(.brown1)
                        }
                    }
                    
                }
                .frame(height: 100)
            }
            .padding(20)

            
            // This block of code is invoked whenever the selection from the picker changes
            .onChange(of: selectionResult) {
                // When the selection result is not nil...
                if let imageSelection = selectionResult {
                    // ... transfer the data from the selection result into
                    // an actual instance of TodoItemImage
                    loadTransferable(from: imageSelection)
                }
            }
        }
    }
    
    
    // MARK: Functions
    
    // Transfer the data from the PhotosPicker selection result into the stored property that
    // will hold the actual image for the new notes item
    private func loadTransferable(from imageSelection: PhotosPickerItem) {
        Task {
            do {
                // Attempt to set the stored property that holds the image data
                newItemImage = try await imageSelection.loadTransferable(type: NotesItemImage.self)
            } catch {
                debugPrint(error)
            }
        }
    }
}

#Preview {
    NotesNewItemView(showSheet: .constant(true))
}
