//
//  VarietyMainTypeView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-18.
//

import SwiftUI

struct VarietyMainTypeView: View {
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
            
            ScrollView {
                VStack(alignment: .leading) {
                        NavigationLink(destination: {
                            VarietyDetailedTypeView1()
                        }, label: {
                            VarietyMainTypeTemplate(MainType: Arabica)
                        })
                        NavigationLink(destination: {
                            VarietyDetailedTypeView2()
                        }, label: {
                            VarietyMainTypeTemplate(MainType: Robusta)
                        })
                        NavigationLink(destination: {
                            VarietyDetailedTypeView3()
                        }, label: {
                            VarietyMainTypeTemplate(MainType: Excelsa)
                        })
                        NavigationLink(destination: {
                            VarietyDetailedTypeView4()
                        }, label: {
                            VarietyMainTypeTemplate(MainType: Liberica)
                        })
                    }
                    .padding(.horizontal)
                    .tint(.brown1)
                }
            }
        }
    }

#Preview {
    VarietyMainTypeView()
        .accentColor(.brown1)
}
