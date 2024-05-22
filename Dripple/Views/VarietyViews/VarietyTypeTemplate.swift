//
//  VarietyTypeTemplate.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct VarietyTypeTemplate: View {
    
    let Variety: CoffeeBeansVariety
    
    var body: some View {
        ScrollView {
            HStack(alignment: .center) {
                Image(Variety.Image1Name)
                    .resizable()
                    .frame(width: 100)
                    .aspectRatio(1.3, contentMode: .fit)
                    .padding(.horizontal)
                Text(Variety.NameOfBeans)
                    .font(.title2)
                    .foregroundStyle(Color.brown1)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.title2)
                    .foregroundStyle(Color.gray2)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .padding(.trailing)
            }
        }
    }
}

#Preview {
    VarietyTypeTemplate(Variety: Typica)
}
