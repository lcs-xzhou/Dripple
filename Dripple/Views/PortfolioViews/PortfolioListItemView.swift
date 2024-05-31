//
//  PortfolioListItemView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-31.
//

import SwiftUI

struct PortfolioListItemView: View {
    
    @Binding var input: String
    
    var body: some View {
        HStack {
            Text("Name")
                .foregroundColor(.brown1)
            
            TextField("Enter a user name", text: $input)
            .multilineTextAlignment(.trailing)
            .foregroundColor(.gray1)
        }
    }
}

#Preview {
    PortfolioListItemView(input: Binding.constant("CL12345"))
}
