//
//  PortfolioItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-31.
//

import SwiftUI

struct PortfolioItemView: View {
    
    let subTitle: String
    let inputHint: String
    @Binding var input: String
    
    var body: some View {
        HStack {
            Text(subTitle)
                .foregroundColor(.brown1)
                .font(.custom("Chalkduster", size: 15))
            
            TextField(inputHint, text: $input)
                .multilineTextAlignment(.trailing)
                .foregroundColor(.gray1)
                .padding(.leading, 10) // Add some padding for better spacing
                .font(.custom("Chalkduster", size: 15))
                .fontWeight(.light)
                .lineLimit(3)
        }
    }
}

#Preview {
    PortfolioItemView(subTitle: "Name", inputHint: "name", input: Binding.constant("CL12345"))
}
