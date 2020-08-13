//
//  ViewController.swift
//  UITextView
//
//  Created by Volodymyr Ostapyshyn on 12.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTextView = UITextView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        
        //myTextView = UITextView(frame: view.bounds)
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: view.bounds.width - 40, height: view.bounds.height / 2))
        myTextView.text = "SomeText"
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
        view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextView.resignFirstResponder()  // take off keyboard
    }
    
    @objc func updateTextView(parameter: Notification) {
        
        let userInfo = parameter.userInfo
        
        let getKeyBoardRect = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyBoardFrame = view.convert(getKeyBoardRect, to: view.window)
        
        if parameter.name == UIResponder.keyboardWillHideNotification {
            myTextView.contentInset = UIEdgeInsets.zero
        } else {
            myTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyBoardFrame.height, right: 0)
            myTextView.scrollIndicatorInsets = myTextView.contentInset
        }
        myTextView.scrollRangeToVisible(myTextView.selectedRange)
        
    }


}

