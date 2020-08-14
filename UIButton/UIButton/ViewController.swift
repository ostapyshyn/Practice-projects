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
    
    let image = UIImage(named: "1")
    
    var myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton = UIButton(type: .roundedRect)
        myButton.frame = CGRect(x: 110, y: 200, width: 100, height: 44)
        myButton.setTitle("press me", for: .normal)
        myButton.setTitle("I'm pressed", for: .highlighted)
        myButton.addTarget(self, action: #selector(buttonIsPressed(sender:)), for: .touchDown)
        myButton.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: .touchUpInside)
        
        myButton.setBackgroundImage(image, for: .normal)
        
        
        self.view.addSubview(myButton)
        
        
        
        for button in buttonCollection {
            button.setTitleColor(.blue, for: .normal)
        }
    }
    
    @objc func buttonIsPressed(sender: UIButton) {
        print("Button Is Pressed")
    }
        
        
    @objc func buttonIsTapped(sender: UIButton) {
        print("Button Is Tapped")
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

