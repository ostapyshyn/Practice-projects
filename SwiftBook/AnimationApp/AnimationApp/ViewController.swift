//
//  ViewController.swift
//  AnimationApp
//
//  Created by Volodymyr Ostapyshyn on 05.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    private var originCoordinate: CGFloat?
    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var springButton: SpringButton!
    
    var animations = ["Wobble", "Swing", "Shake"]
    var countLabel = 0
    var countButton = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
        springButton.setTitle("Run Animation", for: .normal)
        
        //springView.animate()
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
    
    @IBAction func startSpringButton(_ sender: SpringButton) {
        
        springButton.setTitle(animations[countButton], for: .normal)
        mainLabel.text = animations[countLabel]
        
        switch countLabel {
        case 0:
            springView.animation = "wobble"
        case 1:
            springView.animation = "swing"
        case 2:
            springView.animation = "shake"
        default:
            springView.animation = "swing"
        }
        
        
        //springView.animation = "wobble"
        springView.curve = "easeIn"
        springView.force = 2
        springView.duration = 1
        springView.delay = 0.3
        springView.animate()
        
        springButton.animation = "morph"
        springButton.curve = "easeOut"
        springButton.animate()
        
        if countButton == 2 {
            countButton = 0
        } else {
            countButton += 1
        }
        
        if countLabel == 2 {
            countLabel = 0
        } else {
            countLabel += 1
        }
        
    }
    
    


}

