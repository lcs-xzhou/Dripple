//
//  NotesDetailView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct NotesDetailView: View {
    
    // The item currently being added
    @Environment(\.dismiss) var dismiss
    @Binding var note: NotesItem
    @State private var showImagePicker = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        ScrollView {
            
            TextField("Please enter a date", text: $newItemTitle)
                .onSubmit {
                    //createNotes(withTitle: newItemTitle, withPicture: picture, withContext: newItemContext)
                }
                .padding(.top)
                .foregroundColor(.brown1)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
            
            Image(picture)
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
    
    // MARK: Functions
    func createNotes(withTitle title: String, withPicture picture: String, withContext context: String) {
        
        let note = NotesItem(
            title: title,
            picture: picture,
            context: context
        )
        
        // Append to the array
        notes.append(note)
    }
}


#Preview {
    NotesDetailView(picture: "NotePicture1")
}
