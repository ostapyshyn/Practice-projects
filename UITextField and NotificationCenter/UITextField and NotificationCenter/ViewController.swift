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
        myTextField.delegate = self
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
        myTextField.contentVerticalAlignment = .center
        myTextField.textAlignment = .center
        myTextField.placeholder = "I am an iOS Developer"
        myTextField.center = view.center
        myTextField.becomeFirstResponder() // blink cursor in
        view.addSubview(myTextField)
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true // can edit
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("start editing")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Out of the field")
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("end editing")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("You enter \(string)")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("You clear")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("take off keyboard")
        if textField == myTextField {
            textField.resignFirstResponder()
        }
        
        return true
    }

}

