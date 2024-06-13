//
//  CountingFunctions.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import Foundation

struct CountingFunctions {
    
    // MARK: Stored properties
    var gramsOfCoffeeBeans: Double
    
    // MARK: Computed properties
    // Function to count how much water is needed to make provided amount of coffee beans
    var WaterNeeded: Double {
        return round(gramsOfCoffeeBeans * 16)
    }
    // Function to count how much coffeine one takes by provided amount of coffee beans
    var CaffeinIntake: Double {
        return round(gramsOfCoffeeBeans * 12)
    }
    // Function to count how many carbon would be produced by provided amount of coffee beans
    var CarbonProduces: Double {
        return round(gramsOfCoffeeBeans * 0.25)
    }
    // Function to round the grams of coffee beans to one digit after decimal
    var roundedGrams: String {
            return String(format: "%.1f", gramsOfCoffeeBeans)
        }
}
