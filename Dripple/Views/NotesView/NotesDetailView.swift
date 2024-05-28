//
//  NotesDetailView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct NotesDetailView: View {
    
    @Bindable var currentItem: NotesItem
    
    var body: some View {
        ScrollView {
            TextField("Please enter a date", text: $currentItem.title, axis: .vertical)
                .padding(.top)
                .foregroundColor(.brown1)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
            
            Image("NotePicture1")
            
            TextField("Please note down your thoughts", text: $currentItem.context)
                .padding(.horizontal)
                .foregroundColor(.brown1)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
        }
        .padding()
    }
}


#Preview {
    NotesDetailView(currentItem: firstItem)
}
