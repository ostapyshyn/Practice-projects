//
//  ViewController.swift
//  Click Counter
//
//  Created by Volodymyr Ostapyshyn on 21.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label2: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //add label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        
        //add button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        button.setTitle("Click + 1", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: 150, y: 300, width: 100, height: 60)
        button2.setTitle("Click - 1", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button2)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
        
        
        let button3 = UIButton()
        button3.frame = CGRect(x: 150, y: 450, width: 100, height: 60)
        button3.setTitle("Color", for: .normal)
        button3.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button3)
        button3.addTarget(self, action: #selector(ViewController.changeColor), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        
        
    }
    
    @objc func changeColor() {
        
        let random = Int.random(in: 0...2)
                
        switch random {
        case 0:
            self.view.backgroundColor = UIColor.brown
        case 1:
            self.view.backgroundColor = UIColor.blue
        case 2:
            self.view.backgroundColor = UIColor.green
        default:
            self.view.backgroundColor = UIColor.purple
        }
    }
}

