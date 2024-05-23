//
//  MainTypeVariety.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-18.
//

import Foundation

struct MainTypeVariety: Identifiable {
    let id = UUID()
    let typeName: String
    var typeImage: String
    var subTypes: [CoffeeBeansVariety]
}

let arabica = MainTypeVariety(
    typeName: "Arabica",
    typeImage: "Arabica", 
    subTypes: allArabicaBeans
)

let robusta = MainTypeVariety(
    typeName: "Robusta",
    typeImage: "Robusta", 
    subTypes: allRobustaBeans
)

let excelsa = MainTypeVariety(
    typeName: "Excelsa",
    typeImage: "Excelsa", 
    subTypes: allExcelsaBeans
)

let liberica = MainTypeVariety(
    typeName: "Liberica",
    typeImage: "Liberica", 
    subTypes: allLibericaBeans
)

let allMainTypes = [arabica, robusta, excelsa, liberica]
