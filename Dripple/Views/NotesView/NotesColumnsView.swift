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
    
    // The title currently being added
    @State var newItemTitle = ""
    
    // The context currently being added
    @State var newItemContext = ""
    
    // The search text
    @State var searchText = ""
    
    // The view model
    @State var viewModel = NotesViewModel()
    
    // Is the sheet to add a new note item showing right now?
    @State var presentingNewItemSheet = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("Notes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.brown1)
                    .fontDesign(.rounded)
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: twoColumns) {
                        
                        ForEach($viewModel.notes) { $note in
                            
                            NotesItemView(currentItem: $note, viewModel: viewModel)
                                .tint(.brown1)
                                .contextMenu {
                                    Button(
                                        "Delete",
                                        role: .destructive,
                                        action: {
                                            viewModel.delete(note)
                                        }
                                    )
                                }
                        }
                        
                    }
                }
                
                HStack {
                    TextField("Enter a date", text: $newItemTitle)
                    
                    Button("Add") {
                        // Add the new note item
                        viewModel.createNotes(withTitle: newItemTitle, withContext: newItemContext)
                        
                        // Clear the stored property bound to the input textfield
                        newItemTitle = ""
                    }
                    .font(.caption)
                    .disabled(newItemTitle.trimmingCharacters(in: .whitespaces).isEmpty == true)                }
                .padding(20)
            }
            .sheet(isPresented: $presentingNewItemSheet) {
                Text("Hello, world!")
                    .presentationDetents([.fraction(0.15)])
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
                    }
                }
            }
        }
        Spacer()
    }
}

#Preview {
    NotesColumnsView()
}
