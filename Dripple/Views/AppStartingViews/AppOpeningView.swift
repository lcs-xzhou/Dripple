//
//  OpeningView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-06.
//

import SwiftUI

struct AppOpeningView: View {
    
    // MARK: Stored properties
    @State private var hasChosenGetStarted = false
    @State private var hasChosenGetStartedNext = false
    
    // MARK: Computed properties
    var body: some View {

        if hasChosenGetStarted == false {
            AppSplashScreenView(welcomeToDripple: $hasChosenGetStarted)
        } else {
            if hasChosenGetStartedNext == false {
                MainAppLandingView(letsStart: $hasChosenGetStartedNext)
            } else {
                SubAppEntryView()
            }        }
    }
}

#Preview {
    AppOpeningView()
}
