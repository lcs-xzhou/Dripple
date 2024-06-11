//
//  NotesLandingView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-22.
//

import SwiftUI

struct NotesLandingView: View {
    
    // MARK: Stored properties
    let twoColumns = [
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
        GridItem(.adaptive(minimum: 100, maximum: 200), alignment: .top),
    ]
    
    // The view model
    @State var viewModel = NotesViewModel()
    
    // Is the sheet to add a new note item showing right now?
    @State var presentingNewItemSheet = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("Notes")
                    .fontWeight(.bold)
                    .foregroundStyle(.brown1)
                    .font(.custom("Chalkduster", size: 45))
                    .padding()
                
                ScrollView {
                    VStack {
                        
                        if viewModel.notes.isEmpty {
                            if viewModel.fetchingNotes {
                                
                                Spacer()
                                
                                ProgressView()
                                
                                Spacer()
                                
                            } else {
                                Spacer()
                                
                                ContentUnavailableView(
                                    "", systemImage: "pencil.tip.crop.circle.badge.plus",
                                    description: Text("Add a note to get started")
                                        .font(.custom("Chalkduster", size: 20))
                                )
                                .foregroundColor(.brown1)
                                
                                Spacer()
                            }
                            
                        } else {
                            
                            LazyVGrid(columns: twoColumns) {
                                // Show the list of items
                                ForEach($viewModel.notes) { $note in
                                    
                                    // Is there an image attached to the note item?
                                    if note.notes_image == nil {
                                        
                                        // If no, just show the text of the note item
                                        NotesItemView(currentItem: $note)
                                        
                                    } else {
                                        
                                        // If yes, show a navigation
                                        // link that leads to the detail view
                                        NavigationLink(destination: {
                                            
                                            NotesItemDetailView(currentItem: $note)
                                            
                                        }, label: {
                                            
                                            NotesItemView(currentItem: $note)
                                            
                                        })
                                        
                                    }
                                }
                            }
                        }
                    }
                }
                
            }
            // Show the sheet to add a new item
            .sheet(isPresented: $presentingNewItemSheet) {
                NotesNewItemView(showSheet: $presentingNewItemSheet)
                    .presentationDetents([.fraction(0.25)])
            }
            // Add a tool bar to the top of the interface
            // NOTE: For a toolbar to appear, it must be
            //       inside a NavigationView or NavigationStack.
            .toolbar {
                // Add a button to trigger showing the sheet
                ToolbarItem(placement: .automatic) {
                    Button {
                        presentingNewItemSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.brown1)
                            .fontWeight(.semibold)
                            .font(.custom("Chalkduster", size: 20))
                    }
                }
            }
        }
        .environment(viewModel)
        Spacer()
    }
}

#Preview {
    NotesLandingView()
}
