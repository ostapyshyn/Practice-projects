//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Volodymyr Ostapyshyn on 03.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var segControl = UISegmentedControl()
    var menuArray = ["one", "two", "three"]
    var imageView = UIImageView()
    let imageArray = [UIImage(named: "download"), UIImage(named: "2"), UIImage(named: "3")]

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        imageView.center = view.center
        imageView.image = imageArray[0]
        view.addSubview(imageView)
        
        segControl = UISegmentedControl(items: menuArray)
        segControl.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        view.addSubview(segControl)
        
        segControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }

    @objc func selectedValue(target: UISegmentedControl) {
        if target == segControl {
            imageView.image = imageArray[target.selectedSegmentIndex]
        }
        
        let pr = target.titleForSegment(at: target.selectedSegmentIndex)
        print(pr ?? "")
    }

}

