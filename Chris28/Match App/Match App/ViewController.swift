//
//  ViewController.swift
//  Match App
//
//  Created by Volodymyr Ostapyshyn on 20.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = CardModel()
    var cardArray = [Card]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardArray = model.getCards()
    
        
    }


}

