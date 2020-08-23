//
//  HeaderCollectionReusableView.swift
//  WiredBrainCoffee
//
//  Created by Volodymyr Ostapyshyn on 23.08.2020.
//  Copyright © 2020 Mark Moeykens. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    @IBOutlet var headerLabel: UILabel!
    
    func setup(count: Int) {
        headerLabel.text = "Colors: \(count)"
    }
        
}
