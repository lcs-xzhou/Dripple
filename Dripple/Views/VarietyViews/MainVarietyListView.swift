//
//  VarietyMainTypeView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-18.
//

import SwiftUI

struct MainVarietyListView: View {
    var body: some View {
        NavigationStack {
            
            Text("Variety")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.brown1)
                .fontDesign(.rounded)
                .padding()
            Text("Information about different types of coffee beans")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.brown1)
                .fontDesign(.rounded)
                .padding(.bottom)
            
            List {
                ForEach(allMainTypes) { currentVariety in
                    NavigationLink(destination: {
                        VarietyDetailedTypeView1(mainType: currentVariety)
                    }, label: {
                        VarietyMainTypeTemplate(mainType: currentVariety)
                    })
                    .tint(.brown1)
                }
                    }
                    .tint(.brown1)
                }
            }
        }

#Preview {
    MainVarietyListView()
        .accentColor(.brown1)
}
