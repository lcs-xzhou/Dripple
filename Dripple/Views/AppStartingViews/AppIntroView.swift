//
//  AppIntroView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-04.
//

import SwiftUI

struct AppIntroView: View {
    
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
                    .font(.custom("Chalkduster", size: 64))

                Text(context)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Chalkduster", size: 6))
                    .padding(.horizontal, 10)
            }
        }
    }
}

#Preview {
    AppIntroView(title: "Learn", context: "Indulge in a symphony of flavours with our coffee app, featuring a diverse selection of coffee types from around the globe!", picture: "AppIntroPicture1")
}
