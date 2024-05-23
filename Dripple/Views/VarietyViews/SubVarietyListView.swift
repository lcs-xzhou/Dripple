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
        NavigationStack {
            List {
                    ForEach(mainType) { currentVariety in
                        
                        NavigationLink(destination: {
                            VarietyDetailedTemplate(variety: currentVariety)
                        }, label: {
                            VarietyTypeTemplate(variety: currentVariety)
                        })
                        .tint(.brown1)
                    }
                    .searchable(text: $searchText)
            }
            }
        }
    }

#Preview {
    SubVarietyListView(mainType: arabica)
}
