//
//  ViewController.swift
//  Message Magic
//
//  Created by Volodymyr Ostapyshyn on 14.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var userInput: UITextField!
    @IBOutlet var userInput2: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "Hey, Frank!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func displayToLabel() {
        let name1 = userInput.text!
        let name2 = userInput2.text!
        let name3 = name1 + name2
        
        
        outputLabel.text = name3
        }

    
    @IBAction func addPressed(_ sender: UIButton) {
        
        let name1: Int = Int(userInput.text!)!
        let name2: Int = Int(userInput2.text!)!
        let name3 = name1 + name2
        outputLabel.text = "\(name3)"
        
        
    }
    

    @IBAction func SayHi(_ sender: UIButton) {
        outputLabel.text = "Hi \(userInput.text!)"
    }
    
}


