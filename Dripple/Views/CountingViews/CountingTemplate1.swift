//
//  CountingTemplate1.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct CountingTemplate1: View {
    
    // MARK: Stored properties
    @State var base1: Int = 0
    @State var base2: Int = 0
    @State var base3: Int = 0
    
    // MARK: Computed properties
    var WaterNeeded: Int {
        return base1 * 16
    }
    var CoffeinIntake: Int {
        return base2 * 12
    }
    var CarbonProduces: Int {
        return base3 * Int(0.25)
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("How many grams of coffee beans have you put in your cup?")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.brown1)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                
                Image(systemName: "triangleshape.fill")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees: 30))
                    .foregroundColor(.brown1)
                
                ZStack {
                    Circle()
                        .foregroundColor(.brown1)
                        .frame(width: 200)
                    Text("\(base1)")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                
                Image(systemName: "triangleshape.fill")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees: -30))
                    .foregroundColor(.brown1)
            }
            .padding()
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(base1)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base1, label: {Text("select first number")})
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CountingTemplate1()
}
