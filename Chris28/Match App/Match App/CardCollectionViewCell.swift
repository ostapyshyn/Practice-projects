//
//  CardCollectionViewCell.swift
//  Match App
//
//  Created by Volodymyr Ostapyshyn on 23.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var firstImageView: UIImageView!
    
    @IBOutlet var backImageView: UIImageView!
    
    var card: Card?
    
    func setcard(_ card: Card) {
        self.card = card
        
        if card.isFlipped {
            UIView.transition(from: backImageView, to: firstImageView, duration: 0, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        } else {
            UIView.transition(from: firstImageView, to: backImageView, duration: 0, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
        }
        firstImageView.image = UIImage(named: card.imageName)
    }
    
    func flip() {
        UIView.transition(from: backImageView, to: firstImageView, duration: 0.3, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
    }
    
    func flipBack() {
        UIView.transition(from: firstImageView, to: backImageView, duration: 0.3, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
    }
    
    
    
    
    
}
