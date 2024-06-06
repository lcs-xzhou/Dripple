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
                    .fontWeight(.bold)
                    .foregroundStyle(.brown1)
                    .font(.custom("Chalkduster", size: 45))
                    .padding()
                    .padding(.top)
                Text("Information about different types of coffee beans")
                    .foregroundStyle(.brown1)
                    .font(.custom("Chalkduster", size: 12))
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
