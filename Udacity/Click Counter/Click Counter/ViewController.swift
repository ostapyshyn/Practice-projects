//
//  ViewController.swift
//  Click Counter
//
//  Created by Volodymyr Ostapyshyn on 21.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    

}

