//
//  NotesItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesItemView: View {
    
    @Binding var currentItem: NotesItem
    
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
        }
        .padding()
    }
}

#Preview {
    NotesItemView(currentItem: .constant(firstItem))
        .frame(idealHeight: 200, maxHeight: 200)
}
