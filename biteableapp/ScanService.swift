//
//  ScanService.swift
//  QRCodeReader
//
//  Created by Tina Sabine on 30/03/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation

class ScanService {
    
    
    init() {
        self.settings = Settings()
    }
    
    func getScan(callback:(NSDictonary) -> ()) {
    
    }
    
    func request(url:String, callback:(NSDictionary) -> ()) {
        var nsURL = NSURL(string: url)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL) {
            (data, repsone, error) #imageLiteral(resourceName: "warning")
            var error:NSError
            var response = NSJSON
        }
    }
    
}
