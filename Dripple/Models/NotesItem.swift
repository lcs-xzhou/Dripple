//
//  NotesItem.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-20.
//

import SwiftData
import SwiftUI

@Model
class NotesItem: Identifiable {
    var title: String
    var context:  String
    
    init(title: String, picture: Data? = nil, context: String) {
        self.title = title
        self.context = context
    }
}

let firstItem = NotesItem(title: "Apr 14, 2024", context: "Started my day with a cup of smooth Colombian Arabica coffee. Noted the rich flavour and how it perked up my morning. Kept track of my caffeine intake and the environmental impact. Each sip, a journey of flavour and reflection.")

let secondItem = NotesItem(title: "May 20, 2024", context: "Today, I explored the vibrant world of Ethiopian Yirgacheffe coffee. As I brewed it, the aroma filled my kitchen with hints of jasmine and citrus. The first sip was a revelation: bright, complex flavors danced on my palate, leaving a lingering aftertaste of blueberries and black tea.")

let exampleItems = [firstItem, secondItem]

