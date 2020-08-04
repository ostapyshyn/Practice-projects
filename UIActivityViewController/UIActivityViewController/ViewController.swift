//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Volodymyr Ostapyshyn on 04.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var buttonShare = UIButton()
    var textField = UITextField()
    var activityVC: UIActivityViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        createTextField()
        createButton()
    }
    
    func createTextField() {
        textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        textField.center = view.center
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter your text to share"
        textField.delegate = self
        view.addSubview(textField)
    }
    
    func createButton() {
        buttonShare = UIButton(type: .roundedRect)
        buttonShare.frame = CGRect(x: 50, y: 350, width: 280, height: 44)
        buttonShare.setTitle("Share", for: .normal)
        buttonShare.addTarget(self, action: #selector(handleShare(paramSender:)), for: .touchUpInside)
        view.addSubview(buttonShare)
    }
    
    @objc func handleShare(paramSender: Any) {
        let text = textField.text
        
        if text?.count == 0 {
            let message = "Enter your text"
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
            
        }
        
        activityVC = UIActivityViewController(activityItems: [textField.text ?? "nil"], applicationActivities: nil)
        present(activityVC!, animated: true, completion: nil)
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // after press return, hide keyboard
        textField.resignFirstResponder()
        return true
    }

}

