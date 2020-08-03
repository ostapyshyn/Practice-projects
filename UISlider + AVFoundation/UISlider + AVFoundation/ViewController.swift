//
//  ViewController.swift
//  UISlider + AVFoundation
//
//  Created by Volodymyr Ostapyshyn on 02.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    let slider = UISlider()
    
    @IBOutlet var SecondSliderLabel: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        slider.center = view.center
        slider.minimumValue = 0.0
        slider.maximumValue = 100.0
        view.addSubview(slider)
        
        slider.addTarget(self, action: #selector(changeValue), for: .valueChanged)
        
        do {
            
            if let audioPath = Bundle.main.path(forResource: "demo", ofType: ".mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                slider.maximumValue = Float(player.duration)
                
            }
            
        } catch  {
            print("Error")
        }
        
        
    }
    @objc func changeValue(sender: UISlider) {
        if sender == slider {
            player.currentTime = TimeInterval(sender.value)
            player.play()
        }
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        player.play()
        
    }
    
    @IBAction func pauseButtin(_ sender: UIButton) {
        player.pause()
        
        
    }
    
    
    @IBAction func SecondSliderAction(_ sender: UISlider) {
        player.volume = SecondSliderLabel.value
    }
    

}

