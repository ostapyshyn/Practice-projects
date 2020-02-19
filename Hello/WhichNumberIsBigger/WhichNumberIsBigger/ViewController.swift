//
//  ViewController.swift
//  WhichNumberIsBigger
//
//  Created by Volodymyr Ostapyshyn on 17.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var number1: UITextField!
    @IBOutlet var number2: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        if Int(number1.text!)! > Int(number2.text!)! {
            outputLabel.text = "\(number1.text!) is greater than \(number2.text!)"
        } else if Int(number1.text!)! < Int(number2.text!)! {
            outputLabel.text = "\(number1.text!) is smaller than \(number2.text!)"
        } else {
            outputLabel.text = "\(number1.text!) is equal to \(number2.text!)"
        }
    }
}


