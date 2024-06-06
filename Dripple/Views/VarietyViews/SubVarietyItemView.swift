//
//  VarietyTypeTemplate.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct SubVarietyItemView: View {
    
    let variety: CoffeeBeansVariety
    
    var body: some View {
        HStack(alignment: .center) {
            Image(variety.image1Name)
                .resizable()
                .frame(width: 100)
                .aspectRatio(2, contentMode: .fit)
                .padding(.horizontal)
            Text(variety.nameOfBeans)
                .foregroundStyle(Color.brown1)
                .fontWeight(.semibold)
                .font(.custom("Chalkduster", size: 20))
            Spacer()
        }
    }
}

#Preview {
    SubVarietyItemView(variety: typica)
}
