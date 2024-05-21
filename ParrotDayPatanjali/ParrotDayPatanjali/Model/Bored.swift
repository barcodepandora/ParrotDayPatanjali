//
//  Bored.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import Foundation

struct Bored {
    var activity: String?
    var participants: Int?
    var price: Double?
    
    init(activity: String = "",
         participants: Int = 0,
         price: Double = 0.0) {
        self.activity = activity
        self.participants = participants
        self.price = price
    }
}

extension Bored: Decodable {
    
}
