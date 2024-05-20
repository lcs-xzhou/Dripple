//
//  VarietyDetailedTypeView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-17.
//

import SwiftUI

struct VarietyDetailedTypeView: View {

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
                        .tint(.primary)
                    }
                }
            }
            }
        }
    }

#Preview {
    VarietyDetailedTypeView()
}
