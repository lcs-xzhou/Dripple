//
//  NotesColumnsView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesColumnsView: View {
    
    // MARK: Stored properties
    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
    @State var notes: [NotesItem] = exampleItems
        
    // MARK: Computed properties
    var body: some View {
        
        NavigationStack {
            
            Text("Notes")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.brown1)
                .fontDesign(.rounded)
                .padding()
           
            ScrollView {
                LazyVGrid(columns: twoColumns) {
                    
                    ForEach(notes) { note in
                        
                        NavigationLink {
                            NotesItemView(pictures: "NotePicture1")
                        } label: {
                            NotesLabelView(item: note)
                        }
                        .tint(.primary)
                        
                    }
                }
            }
        }
    }
}

    // MARK: Functions
func createNotes(withTitle title: String, withPicture picture: String, withContext context: String) {
        
    let note = NotesItem(
        title: title,
        picture: picture,
        context: context
    )
        
    }



#Preview {
    NotesColumnsView()
}
