//
//  Items.swift
//  biteableapp
//
//  Created by Tina Sabine on 31/05/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class items {
    let id: Int
    let name: String
    let barcode: String
    let vegetarian:String
    
    init(id:Int, name:String, barcode:String, vegetarian:String) {
        self.id = id
        self.name = name
        self.barcode = barcode
        self.vegetarian = vegetarian
    }
    func toJSON() -> String {
        return ""
    }
}
