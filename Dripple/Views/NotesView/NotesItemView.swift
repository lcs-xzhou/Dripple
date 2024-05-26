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
    var onTap: () -> Void
    
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
                TextField("Please enter a date", text: Binding<String>(
                    get: { item.title },
                    set: { _ in }
                ))
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
        .onTapGesture {
            onTap()
        }
    }
}

#Preview {
    HStack {
        NotesItemView(item: firstItem, onTap: {})
            .frame(idealHeight: 200, maxHeight: 200)
        NotesItemView(item: secondItem, onTap: {})
            .frame(idealHeight: 200, maxHeight: 200)
        
    }
}
