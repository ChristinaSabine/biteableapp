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
        request(url: url: settings.viewItems, callback: callback)
    }
    
    func request(url:String, callback:(NSDictionary) -> ()) {
        var nsURL = NSURL(string: url)
        
        let task = URLSession.sharedSession().dataTaskWithURL(nsURL) {
            (data, repsonse, error) in
            var error:NSError?
            var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
            callback(response)
        }
        task.resume()
    }
}
