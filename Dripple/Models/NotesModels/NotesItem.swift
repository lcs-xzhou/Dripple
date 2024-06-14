//
//  NotesItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import Foundation

struct NotesItem: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int?
    var title: String
    var content: String
    var notes_image: String?
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case content
        case notes_image
    }
}

let firstItem = NotesItem(title: "Apr 14, 2024", content: "Started my day with a cup of smooth Colombian Arabica coffee. Noted the rich flavour and how it perked up my morning. Kept track of my caffeine intake and the environmental impact. Each sip, a journey of flavour and reflection.")

let secondItem = NotesItem(title: "May 20, 2024", content: "Today, I explored the vibrant world of Ethiopian Yirgacheffe coffee. As I brewed it, the aroma filled my kitchen with hints of jasmine and citrus. The first sip was a revelation: bright, complex flavors danced on my palate, leaving a lingering aftertaste of blueberries and black tea.")

let exampleItems = [firstItem, secondItem]

