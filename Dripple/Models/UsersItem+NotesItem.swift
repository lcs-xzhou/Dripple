//
//  UsersItem+NotesItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-06-12.
//

import Foundation

// An instance of this structure stores one user
struct UsersNotes: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int?
    var name: String
    var age: String
    var gender: String
    var location: String
    var user_image: String?
    var info: String
    let notes: [NotesItem]
    
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
        case notes
    }
  
    // Embedding the Notes structure insidethe UsersNotes structure
    // mimics the one to many relationshipbetween a user and its notes
    struct NotesItem: Identifiable, Codable {
        // MARK: Stored properties
        var id: Int?
        var title: String
        var content: String
        var notes_image: String?
        var portfolioId: Int?
    }
}
