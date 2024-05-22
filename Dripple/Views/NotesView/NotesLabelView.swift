//
//  NotesLabelView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesLabelView: View {
    
    // The item currently being added
    @State var newItemTitle = ""
    let item: NotesItem
    
    var body: some View {
        
        VStack(spacing: 0) {
            Image(item.picture)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipShape(
                    Rectangle()
                )
                .padding(.bottom, 10)

            TextField("Please enter a date", text: $newItemTitle)
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.brown1)
                .fontDesign(.rounded)
        }
        .padding()        
    }
}

#Preview {
    HStack {
        NotesLabelView(item: firstItem)
            .frame(idealHeight: 200, maxHeight: 200)
        NotesLabelView(item: secondItem)
            .frame(idealHeight: 200, maxHeight: 200)

    }
}
