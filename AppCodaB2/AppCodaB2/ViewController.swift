//
//  ViewController.swift
//  AppCodaB2
//
//  Created by Volodymyr Ostapyshyn on 09.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let names = ["🤓": "Nerd", "👾": "Monstre", "🤖": "Robot", "👻": "Ghost"]
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            let alertController = UIAlertController(title: "Meaning", message: names[wordToLookup] , preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            print(sender.titleLabel?.text ?? "error")
            print("===")
            print(sender.currentTitle!)
            
        }
    }
}

