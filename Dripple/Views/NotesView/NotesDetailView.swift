//
//  NotesDetailView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct NotesDetailView: View {
    
    @State private var showImagePicker = false
    @State private var inputImage: UIImage?
    @State private var imageAdded = false
    @Bindable var currentItem: NotesItem
    
    var onSave: (String, UIImage?, String) -> Void
    var onDelete: () -> Void
    
    var body: some View {
        ScrollView {
            TextField("Please enter a date", text: $currentItem.title)
                .padding(.top)
                .foregroundColor(.brown1)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
            
            if imageAdded, let inputImage = inputImage {
                Image(uiImage: inputImage)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                    .padding(.bottom)
            } else {
                Button("Select Image") {
                    showImagePicker = true
                }
                .padding()
            }
            
            TextField("Please note down your thoughts", text: $currentItem.context)
                .padding(.horizontal)
                .foregroundColor(.brown1)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
        }
        .padding()
        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
            ImagePicker(image: $inputImage)
        }
    }
    
    // MARK: Functions
    func loadImage() {
        if inputImage != nil {
            imageAdded = true
        }
    }
}

//#Preview {
//  NotesDetailView { _, _, _ in } onDelete: {}
//}
