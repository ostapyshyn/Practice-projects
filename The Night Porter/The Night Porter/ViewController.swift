//
//  ViewController.swift
//  The Night Porter
//
//  Created by Volodymyr Ostapyshyn on 07.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackground(_ sender: UIButton) {
        view.backgroundColor = UIColor.darkGray
        
        let all = view.subviews
        
        for currentView in all {
            if currentView is UILabel {
                let label = currentView as! UILabel
                label.textColor = UIColor.blue
            }
        }
    }
    
}

