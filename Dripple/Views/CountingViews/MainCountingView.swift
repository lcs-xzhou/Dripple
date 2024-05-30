//
//  CountingTemplate1.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct MainCountingView: View {
    
    // MARK: Stored properties
    @State var currentGrams = CountingFunctions(gramsOfCoffeeBeans: 10.0)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            Text("How many grams of coffee beans have you put in your cup?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.brown1)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
                .padding()
            
            ZStack {
                Image("CountingPicture1")
                    .resizable()
                    .scaledToFit()
                
                Text("\(currentGrams.roundedGrams)g")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            }
            .padding()
            
            HStack {
                
                Text("0 g")
                    .foregroundColor(.brown1)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                Slider(value: $currentGrams.gramsOfCoffeeBeans, in: 0...300)
                
                Text("300 g")
                    .foregroundColor(.brown1)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
            }
            .padding()
            
            List {
                SubCountingItemView(titleValue: "Water Needed", variable: "\(currentGrams.WaterNeeded) ml", countingPicture: "CountingPicture2")
                
                SubCountingItemView(titleValue: "Caffeine Intake", variable: "\(currentGrams.CaffeinIntake) mg", countingPicture: "CountingPicture3")
                
                SubCountingItemView(titleValue: "Carbon Produced", variable: "\(currentGrams.CarbonProduces) kt", countingPicture: "CountingPicture4")
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listStyle(.plain)
        }
        .padding()
    }
}

#Preview {
    MainCountingView()
}
