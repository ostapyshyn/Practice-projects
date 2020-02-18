//
//  ViewController.swift
//  WarCardGame
//
//  Created by Volodymyr Ostapyshyn on 16.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftImageView: UIImageView!
    
    @IBOutlet var rightImageView: UIImageView!
    
    @IBOutlet var leftScoreLabel: UILabel!
    
    @IBOutlet var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)

        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if rightNumber > leftNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    
}

