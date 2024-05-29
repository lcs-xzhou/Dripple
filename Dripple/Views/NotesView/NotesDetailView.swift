//
//  NotesDetailView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import PhotosUI
import SwiftUI

struct NotesDetailView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @Binding var currentItem: NotesItem
    
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?
    
    // The actual image loaded from the selection that was made
    @State var newItemImage: NotesItemImage?
    
    var body: some View {
        ScrollView {
            TextField("Please enter a date", text: $currentItem.title, axis: .vertical)
                .padding(.top)
                .foregroundColor(.brown1)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
            
            Image("NotePicture1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            TextField("Please note down your thoughts", text: $currentItem.context)
                .padding(.horizontal)
                .foregroundColor(.brown1)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
        }
        .padding()
    }
    
    // MARK: Functions
    
    // Transfer the data from the PhotosPicker selection result into the stored property that
    // will hold the actual image for the new to-do item
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
    NotesDetailView(currentItem: .constant(firstItem))
}
