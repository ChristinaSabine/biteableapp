//
//  Items.swift
//  biteableapp
//
//  Created by Tina Sabine on 31/05/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import Foundation
import SwiftyJSON

class Item {
    let id: Int
    let name: String
//    let barcode: String
//    let vegetarian:String
//    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.name = json["name"].stringValue
//        self.barcode = barcode
//        self.vegetarian = vegetarian
    }
    
}
