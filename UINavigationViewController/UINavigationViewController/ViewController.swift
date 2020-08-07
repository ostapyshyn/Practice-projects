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
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "brand")
        imageView.image = image
        navigationItem.titleView = imageView
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(performAdd(param:)))
        
        let mySwitch = UISwitch()
        mySwitch.isOn = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: mySwitch)
        
    }
    
    @objc func performAdd(param: UIBarButtonItem) {
        print("Add Click")
    }
    
    @objc func displaySecondVC(sender: Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
        
        
        
    }


}

