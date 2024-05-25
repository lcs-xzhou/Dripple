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
            VStack {
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
                
                List(allMainTypes) { currentMainType in
                    NavigationLink(destination: {
                        SubVarietyListView(mainType: currentMainType)
                    }, label: {
                        MainVarietyItemView(mainType: currentMainType)
                    })
                    .tint(.brown1)
                }
                .padding(.trailing)
                .listStyle(.plain)
                .tint(.brown1)
            }
        }
    }
}

#Preview {
    MainVarietyListView()
        .accentColor(.brown1)
}
