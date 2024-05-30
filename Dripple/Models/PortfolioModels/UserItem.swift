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
    var userId: String?
    var userImage: String?
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case userName
        case userId = "user_id"
        case userImage = "user_image"
    }
}

let firstUser = UserItem(userName: "Coffee Lover")

let exampleUsers = [firstUser]


