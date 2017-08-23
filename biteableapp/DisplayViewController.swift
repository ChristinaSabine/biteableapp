
//
//  DisplayViewController.swift
//  biteableapp
//
//  Created by Tina Sabine on 04/07/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageUrlString = "http://46.101.41.155/img/5000328482835.png"
        
        var _:URL = URL(string: imageUrlString)!
        

        print(item)
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
