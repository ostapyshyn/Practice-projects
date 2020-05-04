//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Volodymyr Ostapyshyn on 01.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ConversionVC: UIViewController {
    
    var gradientLayer: CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
        //Silver Challenge
        //createGradientLayer()
        
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
    }
    
    
    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.yellow.cgColor, UIColor.red.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

