import Foundation
import SwiftyJSON

class Item: CustomStringConvertible {
    let id: Int
    let name: String
    let barcode: String
    let vegetarian: String
    let vegan: String
    let glutenfree: String
    let lactosefree: String
    let nutfree: String
    let seafoodfree: String
    let soyafree: String
    var description: String {
        //what's Displayed in Label once scanned
        return "\(name)\n\n Vegetarian? - \(vegetarian)\n Vegan? - \(vegan)\n Gluten Free? - \(glutenfree)\n Lactose Free? - \(lactosefree)\n Nut Free? - \(nutfree)\n Seafood Free? - \(seafoodfree)\n Soya Free? - \(soyafree)\n\n Barcode - \(barcode)"
    }
        //what's Displayed in Image once scanned
    var imageURL: String! {
        return "http://46.101.41.155/img/\(barcode).png"
    }
    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.name = json["name"].stringValue
        self.barcode = json["barcode"].stringValue
        self.vegetarian = json["vegetarian"].stringValue
        self.vegan = json["vegan"].stringValue
        self.glutenfree = json["glutenfree"].stringValue
        self.lactosefree = json["lactosefree"].stringValue
        self.nutfree = json["nutfree"].stringValue
        self.seafoodfree = json["seafoodfree"].stringValue
        self.soyafree = json["soyafree"].stringValue
    }
}
