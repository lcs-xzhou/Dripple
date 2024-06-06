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
                .tabItem {
                    Image(systemName: "books.vertical.circle.fill")
                }
            
            MainCountingView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                }
            
            AppEntryView()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard.fill")
                }
            
            PortfolioListView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }
        }
    }
}

#Preview {
    MainAppEntryView()
}
