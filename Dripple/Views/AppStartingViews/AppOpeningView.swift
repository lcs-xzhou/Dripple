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
    
    // MARK: Computed properties
    var body: some View {

        if hasChosenGetStarted == false {
            AppSplashScreenView(welcomeToDripple: $hasChosenGetStarted)
        } else {
            MainAppLandingView()
        }
    }
}

#Preview {
    AppOpeningView()
}
