//
//  VarietyView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-18.
//

import SwiftUI

struct MainVarietyItemView: View {
    
    let mainType: MainTypeVariety
    
    var body: some View {
        HStack(alignment: .center) {
            Image(mainType.typeImage)
                .resizable()
                .frame(width: 100)
                .aspectRatio(2, contentMode: .fit)
                .padding(.horizontal)
            Text(mainType.typeName)
                .font(.title2)
                .foregroundStyle(Color.brown1)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
            Spacer()
        }
    }
}

#Preview {
    MainVarietyItemView(mainType: arabica)
}
