//
//  ViewController.swift
//  singleButtonStockView
//
//  Created by Volodymyr Ostapyshyn on 19.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

/// <#Description#>
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /// <#Description#>
    @IBAction func experiment(){
        
        
        /// <#Description#>
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a Test"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
        
        
        
    }


}

