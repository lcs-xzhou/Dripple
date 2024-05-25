//
//  NotesItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesItemView: View {
  
    enum FocusedField {
        case newItemTitle
    }
    // The item currently being added
    @State var newItemTitle = ""
    @FocusState private var focusedField: FocusedField?
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
            
            Form {
                TextField("Please enter a date", text: $newItemTitle)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.brown1)
                    .fontDesign(.rounded)
            }
            .onAppear{
                focusedField = .newItemTitle
            }
        }
        .padding()
    }
}

#Preview {
    HStack {
        NotesItemView(item: firstItem)
            .frame(idealHeight: 200, maxHeight: 200)
        NotesItemView(item: secondItem)
            .frame(idealHeight: 200, maxHeight: 200)
        
    }
}
