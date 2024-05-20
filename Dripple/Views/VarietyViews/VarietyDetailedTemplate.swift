//
//  VarietyDetailedTemplate.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct VarietyDetailedTemplate: View {
    
    let Variety: CoffeeBeansVariety
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 20) {
                Text(Variety.NameOfBeans)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.brown1)
                Image(Variety.Image1Name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(Variety.History)
                    .foregroundStyle(Color.gray1)
                    .fontWeight(.medium)
                Image(Variety.Image2Name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(Variety.Flavour)
                    .foregroundStyle(Color.gray1)
                    .fontWeight(.medium)
            }
            .padding(25.0)
            .fontDesign(.rounded)
        }
    }
}

#Preview {
    VarietyDetailedTemplate(Variety: Typica)
}

#Preview {
    VarietyDetailedTemplate(Variety: Bourbon)
}
