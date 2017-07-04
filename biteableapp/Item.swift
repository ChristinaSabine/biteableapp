//
//  Items.swift
//  biteableapp
//
//  Created by Tina Sabine on 31/05/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import Foundation
import SwiftyJSON

class Item: CustomStringConvertible {
    let id: Int
    let name: String
    let barcode: String
    let vegetarian:String
    
    var description: String {
        return "Item: \(name), \(barcode)"
    }
    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.name = json["name"].stringValue
        self.barcode = json["barcode"].stringValue
        self.vegetarian = json["vegtarian"].stringValue
    }
    
}
