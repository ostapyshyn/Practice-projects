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
        
        myTextView = UITextView(frame: view.bounds)
        myTextView.text = "SomeText"
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        view.addSubview(myTextView)
    }


}

