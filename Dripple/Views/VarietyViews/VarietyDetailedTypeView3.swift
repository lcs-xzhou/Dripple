//
//  VarietyDetailedTypeView3.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct VarietyDetailedTypeView3: View {
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(allExcelsaBeans) { currentVariety in
                        
                        NavigationLink(destination: {
                            VarietyDetailedTemplate(Variety: currentVariety)
                        }, label: {
                            VarietyTypeTemplate(Variety: currentVariety)
                        })
                        .tint(.brown1)
                    }
                    .padding(.horizontal)
                }
                .searchable(text: $searchText)
            }
            }
        }
}

#Preview {
    VarietyDetailedTypeView3()
}
