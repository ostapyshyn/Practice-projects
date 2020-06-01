//
//  ViewController.swift
//  DebitCredit
//
//  Created by Volodymyr Ostapyshyn on 01.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputField: UITextField!
    @IBOutlet var listLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    
    var dataArray: [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printData()
    }

    @IBAction func addButton(_ sender: UIButton) {
        if inputField.text! != "" {
            let d = Double(inputField.text!)
            dataArray.append(d!)
        }
        inputField.text = ""
        printData()
    }
    
    func printData() {
        var list = ""
        var summ: Double = 0
        for item in dataArray {
            summ = summ + item
            list = String(item) + ", " + list
        }
        
        listLabel.text = list
        totalLabel.text = "Total summ: \(summ)"
    }
    
}

