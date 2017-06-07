//
//  ItemService.swift
//  biteableapp
//
//  Created by Tina Sabine on 31/05/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import Foundation

class ItemService {
    
    var settings:Settings!
    
    init() {
        self.settings = Settings()
    }
    
    func getItems(callback:(NSDictionary) -> ()) {
        request(url: settings.viewItems, callback: callback)
    }
    
    func request(url:String, callback:(NSDictionary) -> ()) {
        
    }
}
