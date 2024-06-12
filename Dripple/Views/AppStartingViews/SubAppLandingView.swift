//
//  SubAppLandingView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-06.
//

import SwiftUI

struct SubAppLandingView: View {
    
    let title: String
    let context: String
    let picture: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.brown1)
                .ignoresSafeArea()
            
            VStack {
                Image(picture)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .padding(.top, 10)
                
                Text(title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .font(.custom("Chalkduster", size: 45))
                
                Text(context)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Chalkduster", size: 12))
                    .padding(.horizontal)
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    SubAppLandingView(title: "Learn", context: "Indulge in a symphony of flavours with our coffee app, featuring a diverse selection of coffee types from around the globe!", picture: "AppIntroPicture1")
}
