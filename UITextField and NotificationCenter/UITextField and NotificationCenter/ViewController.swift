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
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = -200
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = 0
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(textFieldTextDidChange(_:)) , name:UITextField.textDidChangeNotification, object: nil)


        
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
        myTextField.contentVerticalAlignment = .center
        myTextField.textAlignment = .center
        myTextField.placeholder = "I am an iOS Developer"
        myTextField.center = view.center
        //myTextField.becomeFirstResponder() // blink cursor in
        view.addSubview(myTextField)
        myTextField.delegate = self // вкінці
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("begin")
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
        //print("take off keyboard")
        myTextField.resignFirstResponder()
        if textField == myTextField {
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    @objc func textFieldTextDidChange(_ param: NSNotification) {
        print("change \(param)")
    }

}

