//
//  NotesItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct NotesItemView: View {
    
    // The item currently being added
    @State var newItemTitle = ""
    @State var newItemContext = ""
    let pictures: String
    
    var body: some View {
        ScrollView {
            TextField("Please enter a date", text: $newItemTitle) {createNotes(withTitle: newItemTitle, withPicture: pictures, withContext: newItemContext)}
                .padding(.top)
                .foregroundColor(.brown1)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
        
            Image(pictures)
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
                .padding(.bottom)
            
            TextField("Please note down your thoughts", text: $newItemContext)
                .padding(.horizontal)
                .foregroundColor(.brown1)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
        }
        .padding()
    }
}

#Preview {
    NotesItemView(pictures: "NotePicture1")
}
