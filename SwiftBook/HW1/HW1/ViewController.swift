//
//  ViewController.swift
//  HW1
//
//  Created by Volodymyr Ostapyshyn on 25.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startBuuton: UIButton!
    @IBOutlet var colorButtons: [UIView]!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewWillLayoutSubviews() {
        for view in colorButtons {
            view.layer.cornerRadius = view.bounds.width / 2
            view.alpha = 0.3
        }
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        startBuuton.setTitle("NEXT", for: .normal)
        
        if greenView.alpha == 1 {
            redView.alpha = 1
            greenView.alpha = 0.3
        } else if redView.alpha == 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
        } else {
            redView.alpha = 1
        }
        
        
    }
    
    
}

