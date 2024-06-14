//
//  PortfolioItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import Foundation

struct PortfolioItem: Identifiable, Codable {
    var id: Int?
    var name: String
    var age: String
    var gender: String
    var location: String
    var info: String
    var portfolio_image: String?
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case age
        case gender
        case location
        case info
        case portfolio_image
    }
}



