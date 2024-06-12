//
//  UsersItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import Foundation

struct UsersItem: Identifiable, Codable {
    var id: Int?
    var name: String
    var age: String
    var gender: String
    var location: String
    var user_image: String?
    var info: String
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case age
        case gender
        case location
        case info
        case user_image = "user_image"
    }
}

let firstUser = UsersItem(name: "Coffee Lover", age: "16", gender: "Female", location: "Canada", info: "Motcha is the best!!!")

let exampleUsers = [firstUser]


