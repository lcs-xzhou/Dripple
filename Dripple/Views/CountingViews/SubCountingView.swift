//
//  CountingTemplate1.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftUI

struct SubCountingView: View {
    
    // MARK: Stored properties
    @State var currentGrams = CountingFunctions(gramsOfCoffeeBeans: 10.0)
    let question: String
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(question)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.brown1)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
                .padding()
            
            ZStack {
                Circle()
                    .foregroundColor(.brown1)
                    .frame(width: 200)
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
                
                Slider(value: $currentGrams.gramsOfCoffeeBeans, in: 0...500)
                
                Text("500 g")
                    .foregroundColor(.brown1)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
            }
            .padding()
            
            Button(action: {}) {
                Text("Next")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .bold()
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color(.brown1)))
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SubCountingView(question: "How many grams of coffee beans have you put in your cup?")
}
