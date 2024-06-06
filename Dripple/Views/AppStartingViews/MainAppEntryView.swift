//
//  MainAppEntryView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-06.
//

import SwiftUI

struct MainAppEntryView: View {
    
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
            
            AppEntryView()
                .tabItem {
                    Image(systemName: "clipboard")
                    Text("Notes")
                        .font(.custom("Chalkduster", size: 15))
                }
            
//          PortfolioListView()
//                .tabItem {
//                    Image(systemName: "person.circle")
//                    Text("Portfolio")
//                    .font(.custom("Chalkduster", size: 15))
//                }
        }
        .font(.custom("Chalkduster", size: 15))
        .tint(.white)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(Color.brown1)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
}

#Preview {
    MainAppEntryView()
}
