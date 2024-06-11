//
//  SubAppEntryView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-06.
//

import SwiftUI

struct SubAppEntryView: View {
    
    // MARK: Stored properties
    @State private var hasChosenGetStartedNext = false
    
    var body: some View {
        TabView {
            MainVarietyListView()
                .padding()
                .tabItem {
                    Image(systemName: "book")
                    Text("Variety")
                        .font(.custom("Chalkduster", size: 15))
                }
            
            MainCountingView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Counting")
                        .font(.custom("Chalkduster", size: 15))
                }
            
            NotesLandingView()
                .tabItem {
                    Image(systemName: "clipboard")
                    Text("Notes")
                        .font(.custom("Chalkduster", size: 15))
                }
            
            PortfolioListView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Portfolio")
                        .font(.custom("Chalkduster", size: 15))
                }
        }
        .font(.custom("Chalkduster", size: 15))
        .tint(.brown1)
    }
    
}

#Preview {
    SubAppEntryView()
}
