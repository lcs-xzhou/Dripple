//
//  MainPortfolioView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import PhotosUI
import SwiftUI

struct PortfolioListView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var name = ""
    @State var age = ""
    @State var gender = ""
    @State var location = ""
    @State var info = ""
    
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?
    // The actual image loaded from the selection that was made
    @State var newItemImage: PortfolioListItemImage?
    // Create the source of truth for the view model
    @State var viewModel = PortfolioViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                
                HStack {
                    
                    PhotosPicker(selection: $selectionResult, matching: .images) {
                        
                        // Has an image been loaded?
                        if let newItemImage = newItemImage {
                            
                            // Yes, show it
                            newItemImage.image
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                            
                        } else {
                            
                            // No, show an icon instead
                            Image(systemName: "photo.badge.plus")
                                .symbolRenderingMode(.multicolor)
                                .font(.system(size: 70))
                                .foregroundStyle(.brown1)
                                .scaledToFit()
                            
                        }
                    }
                    .padding(.top, 50)
                    
                }
                
                Text(name)
                    .foregroundColor(.brown1)
                    .font(.custom("Chalkduster", size: 20))
                    .fontWeight(.bold)
                
                List {
                    
                    PortfolioListItemView(subTitle: "Name", inputHint: "Enter", input: $name)
                    PortfolioListItemView(subTitle: "Age", inputHint: "Enter", input: $age)
                    PortfolioListItemView(subTitle: "Gender", inputHint: "Enter", input: $gender)
                    PortfolioListItemView(subTitle: "Location", inputHint: "Enter", input: $location)
                    PortfolioListItemView(subTitle: "Introduction", inputHint: "Enter", input: $info)
                }
                .listStyle(.plain)
                .padding()
                .fontWeight(.semibold)
                .font(.custom("Chalkduster", size: 15))
                
                Image("PortfolioPicture1")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        viewModel.createPortfolio(withName: name, withAge: age, withGender: gender, withLocation: location, withInfo: info, andImage: newItemImage)
                    } label: {
                        Text("Confirm")
                            .font(.custom("Chalkduster", size: 15))
                            .foregroundColor(.brown1)
                    }
                }
            }
        }
        // This block of code is invoked whenever the selection from the picker changes
        .onChange(of: selectionResult) {
            // When the selection result is not nil...
            if let imageSelection = selectionResult {
                // ... transfer the data from the selection result into
                // an actual instance of TodoItemImage
                loadTransferable(from: imageSelection)
            }
        }
    }
    
    // MARK: Functions
    
    // Transfer the data from the PhotosPicker selection result into the stored property that
    // will hold the actual image for the new to-do item
    private func loadTransferable(from imageSelection: PhotosPickerItem) {
        Task {
            do {
                // Attempt to set the stored property that holds the image data
                newItemImage = try await imageSelection.loadTransferable(type: PortfolioListItemImage.self)
            } catch {
                debugPrint(error)
            }
        }
    }
}


#Preview {
    PortfolioListView()
}
