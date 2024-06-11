//
//  PortfolioAppEntryView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-07.


import SwiftUI

struct PortfolioAppEntryView: View {
    
    // MARK: Stored properties
    
    // Keeps track of whether the user has been authenticated
    @State var isAuthenticated = false
    
    // MARK: Computed properties
    var body: some View {
        Group {
            
            // Directs to appropriate view based on whether
            // user is authenticated or not
            if isAuthenticated {
                
                // User is authenticated – show main view of our app
                PortfolioListView()
            } else {
                
                // User not authenticated
                AuthView()
            }
        }
        .task {
            
            // Monitor authentication state
            for await state in await supabase.auth.authStateChanges {
                
                // If the user has been signed in, signed out, or if this is their
                // initial session with Supabase, the code block below will run
                if [.initialSession, .signedIn, .signedOut].contains(state.event) {
                    
                    // isAuthenticated set to true when the user has a session
                    // Otherwise, it is set to false
                    isAuthenticated = state.session != nil
                }
            }
        }
    }
}

#Preview {
    PortfolioAppEntryView()
}
