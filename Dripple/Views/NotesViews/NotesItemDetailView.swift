//
//  NotesItemDetailView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct NotesItemDetailView: View {
    
    // MARK: Stored properties
    // Holds a reference to the current notes item
    @Binding var currentItem: NotesItem
    
    // Holds the image for this notes item
    @State var currentItemImage: NotesItemImage?
    
    // Access the view model through the environment
    @Environment(NotesViewModel.self) var viewModel
    
    var body: some View {
        ScrollView {
            TextField("Please enter a title", text: $currentItem.title, axis: .vertical)
                .padding(.top)
                .foregroundColor(.brown1)
                .fontWeight(.bold)
                .font(.custom("Chalkduster", size: 20))
                .multilineTextAlignment(.center)
                .onSubmit {
                    viewModel.update(note: currentItem)
                }
            
            // When an image has been downloaded, show it
            if let currentItemImage = currentItemImage {
                
                currentItemImage.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
            } else {
                
                // While waiting for the image to download
                // show a progress indicator
                ProgressView()
            }
            
            TextField("Please note down your thoughts", text: $currentItem.context)
                .padding(.horizontal)
                .foregroundColor(.brown1)
                .fontWeight(.semibold)
                .font(.custom("Chalkduster", size: 15))
                .onSubmit {
                    viewModel.update(note: currentItem)
                }
        }
        .padding()
        .task {
            if let notesItemImageURL = currentItem.imageURL, notesItemImageURL.isEmpty == false {
                
                do {
                    currentItemImage = try await viewModel.downloadNotesItemImage(fromPath: notesItemImageURL)
                } catch {
                    debugPrint(error)
                }
            }
        }
        // Add a button to allow for deletion of the notes item
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button("Delete", role: .destructive) {
                    viewModel.delete(currentItem)
                }
                .font(.custom("Chalkduster", size: 15))
                .foregroundStyle(.brown1)
                .fontWeight(.semibold)
            }
        }
    }
}


#Preview {
    NotesItemDetailView(currentItem: .constant(firstItem))
}
