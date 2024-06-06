//
//  VarietyDetailedTemplate.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct SubVarietyDetailView: View {
    
    let variety: CoffeeBeansVariety
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 20) {
                Text(variety.nameOfBeans)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.brown1)
                    .font(.custom("Chalkduster", size: 40))

                Image(variety.image1Name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(variety.history)
                    .foregroundStyle(Color.gray1)
                    .fontWeight(.medium)
                Image(variety.image2Name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(variety.flavour)
                    .foregroundStyle(Color.gray1)
                    .fontWeight(.medium)
            }
            .padding(25.0)
            .font(.custom("Chalkduster", size: 15))
        }
    }
}

#Preview {
    SubVarietyDetailView(variety: typica)
}

#Preview {
    SubVarietyDetailView(variety: bourbon)
}
