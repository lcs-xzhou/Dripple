////
////  MainPortfolioView.swift
////  Dripple
////
////  Created by Fiona ZHOU on 2024-05-30.
////
//
//import PhotosUI
//import SwiftUI
//
//struct PortfolioListView: View {
//    
//    // MARK: Stored properties
//    
//    // The item currently being added
//    @State var userName = ""
//    @State var userAge = ""
//    @State var userGender = ""
//    @State var userLocation = ""
//    @State var userIntro = ""
//    
//    // The selection made in the PhotosPicker
//    @State var selectionResult: PhotosPickerItem?
//    
//    // The actual image loaded from the selection that was made
//    @State var newItemImage: UserItemImage?
//    
//    // Access the view model through the environment
//    @Environment(UsersViewModel.self) var viewModel
//    
//    var body: some View {
//        NavigationView {
//            VStack(alignment: .center, spacing: 0) {
//                
//                HStack {
//                    
//                    PhotosPicker(selection: $selectionResult, matching: .images) {
//                        
//                        // Has an image been loaded?
//                        if let newItemImage = newItemImage {
//                            
//                            // Yes, show it
//                            newItemImage.image
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 150)
//                            
//                        } else {
//                            
//                            // No, show an icon instead
//                            Image(systemName: "photo.badge.plus")
//                                .symbolRenderingMode(.multicolor)
//                                .font(.system(size: 70))
//                                .foregroundStyle(.brown1)
//                                .scaledToFit()
//                            
//                        }
//                    }
//                    .padding(.top, 70)
//                    
//                }
//                
//                Text(userName)
//                    .foregroundColor(.brown1)
//                    .font(.custom("Chalkduster", size: 24))
//                    .fontWeight(.bold)
//                
//                List {
//                    
//                    PortfolioListItemView(subTitle: "Name", inputHint: "Please enter your name", input: $userName)
//                    PortfolioListItemView(subTitle: "Age", inputHint: "Please enter your age", input: $userAge)
//                    PortfolioListItemView(subTitle: "Gender", inputHint: "Please enter your gender", input: $userGender)
//                    PortfolioListItemView(subTitle: "Location", inputHint: "Please enter your location", input: $userLocation)
//                    PortfolioListItemView(subTitle: "Introduction", inputHint: "Please share who you are", input: $userIntro)
//                    
//                }
//                .listStyle(.plain)
//                .padding()
//                .fontWeight(.semibold)
//                .font(.custom("Chalkduster", size: 12))
//                .onSubmit {
//                    viewModel.createUsers(withUserName: userName, withUserAge: userAge, withUserGender: userGender, withUserLocation: userLocation, withUserIntro: userIntro, andUserImage: newItemImage)
//
//                }
//                
//                Image("PortfolioPicture1")
//                    .resizable()
//                    .scaledToFit()
//                    .padding()
//            }
//            
//        }
//        // This block of code is invoked whenever the selection from the picker changes
//        .onChange(of: selectionResult) {
//            // When the selection result is not nil...
//            if let imageSelection = selectionResult {
//                // ... transfer the data from the selection result into
//                // an actual instance of TodoItemImage
//                loadTransferable(from: imageSelection)
//            }
//        }
//    }
//    
//    // MARK: Functions
//    
//    // Transfer the data from the PhotosPicker selection result into the stored property that
//    // will hold the actual image for the new to-do item
//    private func loadTransferable(from imageSelection: PhotosPickerItem) {
//        Task {
//            do {
//                // Attempt to set the stored property that holds the image data
//                newItemImage = try await imageSelection.loadTransferable(type: UserItemImage.self)
//            } catch {
//                debugPrint(error)
//            }
//        }
//    }
//}
//
//
//#Preview {
//    PortfolioListView()
//}
