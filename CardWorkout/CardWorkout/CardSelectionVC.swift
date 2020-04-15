//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Volodymyr Ostapyshyn on 14.04.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    var timer: Timer!
    var cards: [UIImage] = Deck.allValues
    
    @IBOutlet var cardImage: UIImageView!
   
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        startTimer()
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImage.image = cards.randomElement() ?? UIImage(named: "AS")
        
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    
    
    
}
