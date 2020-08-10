//
//  ViewController.swift
//  UILabel
//
//  Created by Volodymyr Ostapyshyn on 10.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        myLabel.frame = labelFrame
        myLabel.numberOfLines = 0
        myLabel.lineBreakMode = .byWordWrapping
        myLabel.adjustsFontSizeToFitWidth = true
        //myLabel.sizeToFit()
        myLabel.text = "Hello! Learn iOS programming!"
        
        myLabel.textColor = UIColor.black
        myLabel.shadowColor = .lightGray
        myLabel.shadowOffset = CGSize(width: 2, height: 2)
        
        
        
        myLabel.font = UIFont.boldSystemFont(ofSize: 24)
        myLabel.center = view.center
        view.addSubview(myLabel)
        
        
        
        
    }


}

