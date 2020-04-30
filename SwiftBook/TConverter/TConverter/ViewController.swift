//
//  ViewController.swift
//  TConverter
//
//  Created by Volodymyr Ostapyshyn on 29.04.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var celciusLabel: UILabel!
    @IBOutlet var fahrenheitLabel: UILabel!
    @IBOutlet var slider: UISlider! {
        didSet {
            slider.minimumValue = -50
            slider.maximumValue = 100
            slider.value        = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func slderChanged(_ sender: UISlider) {
        let tempCel = Int(round(sender.value))
        celciusLabel.text = "\(tempCel)ºC"
        let fahrenTemp = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenTemp)ºF"
        
    }
    

}

