//
//  ViewController.swift
//  biteableapp
//
//  Created by Tina Sabine on 26/05/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class QRCodeViewController: UIViewController {
    
    @IBOutlet weak var codeLabel: UILabel!
    
    var ItemCollection = [Item]()
    
    var service:ItemService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        Alamofire.request("http://46.101.41.155/items.json").responseJSON { response in
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showScanner(_ sender: UIButton) {
        performSegue(withIdentifier: "Scanner", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Scanner" {
            let destinationVC = segue.destination as! QRScannerController
            destinationVC.delegate = self
        }
    }
    
}


extension QRCodeViewController: QRScannerControllerDelegate {
    func didScan(code: String) {
        codeLabel.text = code
    }
}
