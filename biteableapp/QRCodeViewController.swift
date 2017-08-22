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
    
    var item: Item!
    
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var codeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showScanner(_ sender: UIButton) {
        performSegue(withIdentifier: "Scanner", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Scanner" {
            let destinationVC = segue.destination as! QRScannerController
            destinationVC.delegate = self
        }
        
        if segue.identifier == "Display" {
            let displayViewController = segue.destination as! DisplayViewController
            displayViewController.item = item
        }
    }
    
    func checkData(jsonData: JSON) {
        
        guard let _ = jsonData["item"]["id"].int else {
            //item not in database
            print("not in database")
            return
        }
        
        item = Item(json: jsonData["item"])
        
        showButton.isEnabled = true
        showButton.isHidden = false
        
    }

    func lookUpCode(_ code: String) {
    
        Alamofire.request("http://46.101.41.155/items/view/\(code).json").response { response in
            
            guard let data = response.data else {
                //something went wrong, there was no data...
                return
            }
            
            let json = JSON(data: data)
            self.checkData(jsonData: json)
        }
    }
}


extension QRCodeViewController: QRScannerControllerDelegate {
    
    func didScan(code: String) {
        codeLabel.text = code
        lookUpCode(code)
    }
}

