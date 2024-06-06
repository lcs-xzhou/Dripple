//
//  AppStartingView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-04.
//

import SwiftUI

struct AppStartingView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.brown1)
                .ignoresSafeArea()
            
            VStack {
                Image("AppEntryPicture1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .padding(10)
                
                Text("Brew. Sip. Love. Your coffee, perfected.")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.custom("Chalkduster", size: 12))
            }
        }
    }
}

#Preview {
    AppStartingView()
}
