//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Volodymyr Ostapyshyn on 01.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gradientLayer: CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Silver Challenge
        //createGradientLayer()
        
    }
    
    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.yellow.cgColor, UIColor.red.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

