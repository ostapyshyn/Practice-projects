//
//  ViewController.swift
//  Match App
//
//  Created by Volodymyr Ostapyshyn on 20.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
        let card = cardArray[indexPath.row]
        cell.setcard(card)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
        
        let card = cardArray[indexPath.row]
        
        if !card.isFlipped {
            cell.flip()
            card.isFlipped = true
            
            if firstFlippedCard == nil {
                
                firstFlippedCard = indexPath
            } else {
                
            }
            
            
            
            
        } 
        
        
    }
    func checkForMatches(_ secondFlippedCardIndex: IndexPath) {
        let cardOneCell = collectionView.cellForItem(at: firstFlippedCard!) as! CardCollectionViewCell
    
    
    }
    
    
    var model = CardModel()
    var cardArray = [Card]()
    
    var firstFlippedCard: IndexPath?
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        cardArray = model.getCards()
        
        
    
        
    }


}

