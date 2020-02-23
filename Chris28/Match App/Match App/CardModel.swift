//
//  CarModel.swift
//  Match App
//
//  Created by Volodymyr Ostapyshyn on 22.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {

        var generatedCardsArray = [Card]()
        
        for _ in 1...8 {
            
            let randomNumber = arc4random_uniform(13) + 1 // from 1 to 13
            
            print(randomNumber)
            
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            generatedCardsArray.append(cardOne)
            
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            generatedCardsArray.append(cardTwo)
            
            
            
        }
    
        return generatedCardsArray
        
    }
}
