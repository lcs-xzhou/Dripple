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
    var WaterNeeded: Double {
        return round(gramsOfCoffeeBeans * 16)
    }
    var CoffeinIntake: Double {
        return round(gramsOfCoffeeBeans * 12)
    }
    var CarbonProduces: Double {
        return round(gramsOfCoffeeBeans * 0.25)
    }
    var roundedGrams: String {
            return String(format: "%.1f", gramsOfCoffeeBeans)
        }
}
