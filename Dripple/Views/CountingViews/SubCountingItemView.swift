//
//  CountingFeedbackView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import SwiftUI

struct SubCountingItemView: View {
        
    let titleValue: String
    let variable: String
    let countingPicture: String
    
    var body: some View {
        HStack {
            
            Image(countingPicture)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(height: 100)
            
            VStack {
                HStack {
                    Text(titleValue)
                        .fontWeight(.semibold)
                        .font(.custom("Chalkduster", size: 20))
                        .foregroundColor(.brown1)
                    Spacer()
                }
                HStack {
                    Text(variable)
                        .font(.custom("Chalkduster", size: 20))
                        .foregroundColor(.gray1)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SubCountingItemView(titleValue: "Water Needed", variable: "90 ml", countingPicture: "CountingPicture2")
}
