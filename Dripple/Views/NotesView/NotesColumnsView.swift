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
    
    // 1. Create a State variable to control presenting the sheet
    @State private var presentingSheet = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("Notes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.brown1)
                    .fontDesign(.rounded)
                    .padding()
                
                LazyVGrid(columns: twoColumns) {
                    
                    ForEach(notes) { note in
                        
                        NavigationLink {
                            NotesDetailView(picture: "NotePicture1")
                        } label: {
                            NotesItemView(item: note)
                        }
                        .tint(.primary)
                        
                    }
                }
                // 3. Listen for State variable changes to true
                .sheet(isPresented: $presentingSheet) {
                    NotesDetailView(picture: "NotePicture1")
                }
                
                Spacer()
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .foregroundColor(.brown1)
                }
            }
            
        }
    }
}

#Preview {
    NotesColumnsView()
}
