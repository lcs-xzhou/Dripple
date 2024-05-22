//
//  VarietyDetailedTypeView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct VarietyDetailedTypeView1: View {

    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(allArabicaBeans) { currentVariety in
                        
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
    VarietyDetailedTypeView1()
}
