//
//  ViewController.swift
//  UIButton
//
//  Created by Volodymyr Ostapyshyn on 13.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttonCollection {
            button.setTitleColor(.blue, for: .normal)
        }
    }
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        let button = sender
        
        if button.titleLabel?.text == "Button1" {
            print("Button 1")
        } else if button.tag == 3 {
            print("кнопка 3")
        }
        
        
        
    }
    


}

