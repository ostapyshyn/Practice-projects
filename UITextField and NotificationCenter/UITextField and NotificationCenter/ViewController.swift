//
//  ViewController.swift
//  UITextField and NotificationCenter
//
//  Created by Volodymyr Ostapyshyn on 10.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var myTextField = UITextField()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
        myTextField.contentVerticalAlignment = .center
        myTextField.textAlignment = .center
        myTextField.placeholder = "I am an iOS Developer"
        myTextField.center = view.center
        view.addSubview(myTextField)
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

