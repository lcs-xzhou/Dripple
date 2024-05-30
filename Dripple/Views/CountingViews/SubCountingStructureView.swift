//
//  CountingFeedbackView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import SwiftUI

struct SubCountingStructureView: View {
        
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
                        .fontDesign(.rounded)
                        .foregroundColor(.brown1)
                    Spacer()
                }
                HStack {
                    Text(variable)
                        .font(.callout)
                        .fontDesign(.rounded)
                        .foregroundColor(.gray1)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SubCountingStructureView(titleValue: "Water Needed", variable: "90 ml", countingPicture: "CountingPicture2")
}
