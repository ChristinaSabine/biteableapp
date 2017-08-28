
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
    @IBOutlet weak var itemLabel: UILabel!

    var item: Item!
    
    override func viewDidLoad() {
        
        print(item)
            itemLabel.text = "\(item)"
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
