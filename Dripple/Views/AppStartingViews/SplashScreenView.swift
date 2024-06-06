//
//  AppStartingView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-04.
//

import SwiftUI

struct SplashScreenView: View {
    
    // MARK: Stored properties
    @Binding var getStarted: Bool
    
    // MARK: Computed properties
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.brown1)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                                
                Image("AppEntryPicture1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .padding(10)
                
                Text("Brew. Sip. Love. Your coffee, perfected.")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.custom("Chalkduster", size: 15))
                
                Spacer()
                
                Text("Welcome to Dripple!")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.custom("Chalkduster", size: 45))
                    .onTapGesture {
                        getStarted = true
                    }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SplashScreenView(getStarted: Binding.constant(false))
}
