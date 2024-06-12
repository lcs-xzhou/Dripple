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
