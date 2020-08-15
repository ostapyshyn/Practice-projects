//
//  ViewController.swift
//  UIImageView & UIImage
//
//  Created by Volodymyr Ostapyshyn on 15.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myImageView = UIImageView()
    let macBookImage = UIImage(named: "2")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //myImageView = UIImageView(image: macBookImage)
        myImageView = UIImageView(frame: view.bounds)
        myImageView.contentMode = .scaleAspectFit
        myImageView.image = macBookImage
        myImageView.center = view.center
        view.addSubview(myImageView)
        
        
        
    }


}

