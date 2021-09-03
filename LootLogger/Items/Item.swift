//
//  Item.swift
//  LootLogger
//
//  Created by Тимофей Кулижников on 28.08.2021.
//

import UIKit

class Item: Equatable, Codable {
    var name: String
    var valueInDollars: Int
    var serialNumber : String?
    var dateCreated : Date
    let itemKey: String
    
    static func == (lhs: Item, rhs: Item) -> Bool{
        return lhs.name == rhs.name && lhs.serialNumber == rhs.serialNumber &&
            lhs.valueInDollars == rhs.valueInDollars && lhs.dateCreated == rhs.dateCreated
    }
    
    init(name: String, serialNumber: String?, valueInDollars : Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
    }
    
    convenience init (random: Bool = false){
        if random{
            let adjectives = ["Fluffy", "Rich", "Amazing"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            let randomAdjective = adjectives.randomElement()!
            let randomNoun = nouns.randomElement()!
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int.random(in: 0...100)
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            self.init(name: randomName,serialNumber: randomSerialNumber, valueInDollars: randomValue)
        } else{
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
}
