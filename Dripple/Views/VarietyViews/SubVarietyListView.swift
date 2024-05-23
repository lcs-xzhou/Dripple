//
//  VarietyDetailedTypeView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct SubVarietyListView: View {
    
    @State var searchText = ""
    let mainType: MainTypeVariety
    
    var body: some View {
        List {
            ForEach(mainType.subTypes) { currentVariety in
                
                NavigationLink(destination: {
                    SubVarietyDetailView(variety: currentVariety)
                }, label: {
                    SubVarietyItemView(variety: currentVariety)
                })
                .tint(.brown1)
            }
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    SubVarietyListView(mainType: arabica)
}
