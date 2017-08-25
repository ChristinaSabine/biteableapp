
//
//  DisplayViewController.swift
//  biteableapp
//
//  Created by Tina Sabine on 04/07/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var item: Item!
    
    override func viewDidLoad() {
        
        let imageUrl:String = "http://46.101.41.155/img/5000328482835.png"
        
        let _:URL = URL(string: imageUrl)!
        
        print(item)
        
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
