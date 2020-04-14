//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Volodymyr Ostapyshyn on 14.04.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet var cardImage: UIImageView!
   
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
        
    }
    
    
}
