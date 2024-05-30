//
//  MainPortfolioView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import PhotosUI
import SwiftUI

struct MainPortfolioListView: View {
    
    // MARK: Stored properties
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?

    
    var body: some View {
        VStack {
            Image("NotePicture1")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            Text("")
        }
    }
}

#Preview {
    MainPortfolioListView()
}
