//
//  VarietyDetailedTypeView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct SubVarietyListView: View {
    
    let mainType: MainTypeVariety
    
    var body: some View {
        List(mainType.subTypes) { currentVariety in
            
            NavigationLink(destination: {
                SubVarietyDetailView(variety: currentVariety)
            }, label: {
                SubVarietyItemView(variety: currentVariety)
            })
            .tint(.brown1)
        }
        .padding(.trailing)
        .listStyle(.plain)
    }
}

#Preview {
    SubVarietyListView(mainType: arabica)
}
