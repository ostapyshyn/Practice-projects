//
//  ViewController.swift
//  UISwitch
//
//  Created by Volodymyr Ostapyshyn on 31.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        button.backgroundColor = UIColor.orange
        button.setTitle("OK", for: .normal)
        button.setTitle("Pressed", for: .highlighted)
        
        view.addSubview(button)
        
        
        mySwitch.frame = CGRect.zero
        mySwitch.center = view.center
        view.addSubview(mySwitch)
        
        mySwitch.tintColor = UIColor.green
        mySwitch.thumbTintColor = UIColor.red
        mySwitch.onTintColor = UIColor.blue
        
        
//        mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
//        view.addSubview(mySwitch)
//
//        mySwitch.setOn(true, animated: true)
        
//        // only once
//        if mySwitch.isOn {
//            print("ON")
//        } else {
//            print("OFF")
//        }
        
        // observer many times
        
        mySwitch.addTarget(self, action: #selector(switchChanged2(target:)), for: .valueChanged)
        
        
    }
    @objc func switchChanged2(target: UISwitch) {
        print("param is =", target)
        if target.isOn {
            button.isUserInteractionEnabled = false
        } else {
            button.isUserInteractionEnabled = true
        }
    }
    
    
    
    
    @objc func switchChanged(target: UISwitch) {
        print("param is =", target)
        if target.isOn {
            print("ON")
        } else {
            print("OFF")
        }
    }


}

