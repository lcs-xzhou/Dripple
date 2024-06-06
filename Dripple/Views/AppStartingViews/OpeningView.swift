//
//  OpeningView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-06.
//

import SwiftUI

struct OpeningView: View {
    
    // MARK: Stored properties
    @State private var hasChosenGetStarted = false
    
    // MARK: Computed properties
    var body: some View {

        if hasChosenGetStarted == false {
            SplashScreenView(getStarted: $hasChosenGetStarted)
        } else {
            AppLandingView()
        }
    }
}

#Preview {
    OpeningView()
}
