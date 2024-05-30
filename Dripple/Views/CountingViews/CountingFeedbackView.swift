//
//  CountingFeedbackView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import SwiftUI

struct CountingFeedbackView: View {
    
    let feedback: String
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.brown1)
                    .aspectRatio(2, contentMode: .fit)
                
                Text(feedback)
                    .font(.title)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            
            Image("CountingPicture1")
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    CountingFeedbackView(feedback: "You would need 90 ml of water to make a cup of coffee with 5 grams of coffee powder~")
}
