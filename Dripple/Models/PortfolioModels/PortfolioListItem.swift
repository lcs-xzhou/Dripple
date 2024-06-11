//
//  PortfolioListItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import Foundation

struct PortfolioListItem: Identifiable, Codable {
    var id: Int?
    var name: String
    var age: String
    var gender: String
    var location: String
    var intro: String
    var imageURL: String?
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case age
        case gender
        case location
        case intro
        case imageURL = "user_image"
    }
}

let firstUser = PortfolioListItem(name: "Coffee Lover", age: "16", gender: "Female", location: "Canada", intro: "Motcha is the best!!!")

let exampleUsers = [firstUser]


