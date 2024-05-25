//
//  NotesDetailView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct NotesDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    // The item currently being added
    @State var newItemTitle = ""
    @State var newItemContext = ""
    var picture: String
    
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
    }
}


#Preview {
    NotesDetailView(picture: "NotePicture1")
}
