//
//  NotesItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesItemView: View {
    
    // Holds a reference to the current note item
    @Binding var currentItem: NotesItem
    
    // Holds the image for this note item, if an image exists
    @State var currentItemImage: NotesItemImage?
    
    // Access the view model through the environment
    @Environment(NotesViewModel.self) var viewModel
    
    var body: some View {
        VStack(spacing: 0) {
            
            // When an image has been successfully downloaded for this notes item,
            // (it is not nil), then show a preview of the image (not too big since it is in a list)
            if let currentItemImage = currentItemImage {
                currentItemImage.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            
            TextField("Please enter a date", text: $currentItem.title, axis: .vertical)
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.brown1)
                .fontDesign(.rounded)
                .onSubmit {
                    viewModel.update(note: currentItem)
                }
        }
        .padding()
        // Adds an asynchronous task to perform before this view appears.
        .task {
            // If the image URL for this notes item is not nil, and if it is not an empty string...
            if let notesItemImageURL = currentItem.imageURL, notesItemImageURL.isEmpty == false {
                
                // ... then attempt to download the image so it can be displayed in this view
                do {
                    currentItemImage = try await viewModel.downloadNotesItemImage(fromPath: notesItemImageURL)
                } catch {
                    debugPrint(error)
                }
                
            }
        }
    }
}

#Preview {
    
    @State var previewsViewModel = NotesViewModel()
    
    return VStack {
        NotesItemView(currentItem: .constant(firstItem))
    }
}
