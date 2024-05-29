//
//  NotesItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesItemView: View {
    
    @Binding var currentItem: NotesItem
    
    // Recieve a reference to the view model from the parent view
    @Bindable var viewModel: NotesViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            
            Image("NotePicture1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
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
    }
}

#Preview {
    
    @State var previewsViewModel = NotesViewModel()
    
    return VStack {
        NotesItemView(currentItem: .constant(firstItem), viewModel: previewsViewModel)
    }
}
