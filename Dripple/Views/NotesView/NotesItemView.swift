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
    @FocusState private var focusedField: FocusedField?
    let item: NotesItem
    
    var body: some View {
        VStack(spacing: 0) {
            if let picture = item.picture, let uiImage = UIImage(data: picture) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 150)
                    .clipShape(
                        Rectangle()
                    )
                    .padding(.bottom, 10)
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 150)
                    .clipShape(
                        Rectangle()
                    )
                    .padding(.bottom, 10)
                    .foregroundColor(.brown1)
            }
            
            Form {
                TextField("Please enter a date", text: item.title)
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
