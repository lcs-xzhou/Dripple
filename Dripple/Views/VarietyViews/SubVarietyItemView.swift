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
                    .aspectRatio(1.3, contentMode: .fit)
                    .padding(.horizontal)
                Text(variety.nameOfBeans)
                    .font(.title2)
                    .foregroundStyle(Color.brown1)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                Spacer()
            }
    }
}

#Preview {
    SubVarietyItemView(variety: typica)
}
