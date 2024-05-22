//
//  MainTypeVariety.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-18.
//

import Foundation

struct MainTypeVariety: Identifiable {
    let id = UUID()
    let TypeName: String
    var TypeImage: String
}

let Arabica = MainTypeVariety(
    TypeName: "Arabica",
    TypeImage: "Arabica"
)

let Robusta = MainTypeVariety(
    TypeName: "Robusta",
    TypeImage: "Robusta"
)

let Excelsa = MainTypeVariety(
    TypeName: "Excelsa",
    TypeImage: "Excelsa"
)

let Liberica = MainTypeVariety(
    TypeName: "Liberica",
    TypeImage: "Liberica"
)

let allMainTypes = [Arabica, Robusta, Excelsa, Liberica]
