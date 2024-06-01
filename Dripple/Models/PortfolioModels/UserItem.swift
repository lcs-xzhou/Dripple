//
//  UserItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-30.
//

import Foundation

struct UserItem: Identifiable, Codable {
    var id: Int?
    var userName: String
    var userAge: String
    var userGender: String
    var userLocation: String
    var userIntro: String
    var userImage: String?
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case userName
        case userAge
        case userGender
        case userLocation
        case userIntro
        case userImage = "user_image"
    }
}

let firstUser = UserItem(userName: "Coffee Lover", userAge: "16", userGender: "Female", userLocation: "Canada", userIntro: "Motcha is the best!!!")

let exampleUsers = [firstUser]


