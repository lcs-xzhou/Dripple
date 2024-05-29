//
//  NotesNewItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-29.
//

import SwiftUI

struct NotesNewItemView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemTitle = ""
    @State var newItemContext = ""
    
    // Access the view model through the environment
    @Environment(NotesViewModel.self) var viewModel
    
    // Binding to control whether this view is visible
    @Binding var showSheet: Bool
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
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
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button {
                            showSheet = false
                        } label: {
                            Text("Done")
                                .foregroundColor(.brown1)
                                .fontWeight(.semibold)
                        }
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    NotesNewItemView(showSheet: .constant(true))
}
