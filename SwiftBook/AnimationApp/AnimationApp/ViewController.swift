//
//  ViewController.swift
//  AnimationApp
//
//  Created by Volodymyr Ostapyshyn on 05.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    private var originCoordinate: CGFloat?
    //@IBOutlet var springView: SpringView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        //coreAnimationView.frame.origin.x -= 40
        
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat], animations: {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            } else {
                self.coreAnimationView.frame.origin.x += 40
            }
        })
    }
    
    


}

