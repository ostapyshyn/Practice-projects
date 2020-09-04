//
//  ViewController.swift
//  Singleton
//
//  Created by Volodymyr Ostapyshyn on 03.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.shared.applicationIconBadgeNumber = 1
        UserDefaults.standard
        URLSession.shared
        
        print(Settings.shared.volumeLevel)
        Settings.shared.volumeLevel = 2
        print(Settings.shared.volumeLevel)
        
        
    }


}

