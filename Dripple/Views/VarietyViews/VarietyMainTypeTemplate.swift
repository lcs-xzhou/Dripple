//
//  VarietyView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-18.
//

import SwiftUI

struct VarietyMainTypeTemplate: View {
    
    let MainType: MainTypeVariety
    
    var body: some View {
        ScrollView {
            HStack(alignment: .center) {
                Image(MainType.TypeImage)
                    .resizable()
                    .frame(width: 120, height: 80)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Text(MainType.TypeName)
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
    VarietyMainTypeTemplate(MainType: Arabica)
}
