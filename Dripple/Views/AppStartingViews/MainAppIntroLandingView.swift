//
//  AppIntroView.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-04.
//

import SwiftUI

struct MainAppLandingView: View {
    
    // MARK: Stored properties
    @State private var hasChosenGetStarted = false
    @State private var hasChosenGetStartedNext = false
    @Binding var letsStart: Bool
    
    // MARK: Computed properties
    var body: some View {
        ZStack {
            Color.brown1
                .ignoresSafeArea()
            
            TabView {
                SubAppLandingView(title: "Learn", context: "Indulge in a symphony of flavours with our coffee app, featuring a diverse selection of coffee types from around the globe!", picture: "AppIntroPicture1")
                
                SubAppLandingView(title: "Drink", context: "Empower your coffee routine with our app, offering tailored water ratios, caffeine tracking, and environmental impact insights for every cup!", picture: "AppIntroPicture2")
                
                ZStack {
                    SubAppLandingView(title: "Note", context: "Capture your coffee journey and daily reflections with our app, your personal diary for all things coffee and beyond!", picture: "AppIntroPicture3")
                    VStack {
                        Spacer()
                        Text("Let's start~")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Chalkduster", size: 30))
                            .padding(.bottom, 45.0)
                            .foregroundColor(.brown1)
                            .onTapGesture {
                                letsStart = true
                            }
                            .background(Color.white, in: RoundedRectangle(cornerRadius: 15))
                    }
                }
            }
            // Present the tab view
            .tabViewStyle(.page)
            // Always show the dots to indicate available pages
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    MainAppLandingView(letsStart: Binding.constant(false))
}
