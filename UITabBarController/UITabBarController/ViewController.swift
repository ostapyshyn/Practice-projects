//
//  ViewController.swift
//  UITabBarController
//
//  Created by Volodymyr Ostapyshyn on 08.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "FirstVCX"
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        self.tabBarItem = tabBarItem
        
        
        //title = "FirstVCC"
        view.backgroundColor = .blue
    }


}

