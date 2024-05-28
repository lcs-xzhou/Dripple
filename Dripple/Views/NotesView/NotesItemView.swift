//
//  NotesItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesItemView: View {
    
    enum FocusedField {
        case currentItem
    }
    @FocusState private var focusedField: FocusedField?
    @Bindable var currentItem: NotesItem
    var onTap: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            
            Form {
                TextField("Please enter a date", text: Binding<String>(
                    get: { currentItem.title },
                    set: { _ in }
                ))
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.brown1)
                .fontDesign(.rounded)
            }
            .onAppear{
                focusedField = .currentItem
            }
        }
        .padding()
        .onTapGesture {
            onTap()
        }
    }
}

//#Preview {
//     HStack {
//        NotesItemView(currentItem: firstItem, onTap: {})
//            .frame(idealHeight: 200, maxHeight: 200)
//        NotesItemView(currentItem: secondItem, onTap: {})
//            .frame(idealHeight: 200, maxHeight: 200)
//    }
//}
