//
//  ViewController.swift
//  UINavigationViewController
//
//  Created by Volodymyr Ostapyshyn on 04.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displaySecondButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FirstVC"
        
        displaySecondButton = UIButton(type: .system)
        displaySecondButton.setTitle("SecondVC", for: .normal)
        displaySecondButton.sizeToFit()
        displaySecondButton.center = view.center
        displaySecondButton.addTarget(self, action: #selector(displaySecondVC), for: .touchUpInside)
        view.addSubview(displaySecondButton)
        
        
        
    }
    
    @objc func displaySecondVC(sender: Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
        
        
        
    }


}

