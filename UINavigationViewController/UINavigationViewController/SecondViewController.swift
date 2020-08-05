//
//  SecondViewController.swift
//  UINavigationViewController
//
//  Created by Volodymyr Ostapyshyn on 05.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondVC"
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    
    @objc func goBack() {
        //navigationController?.popViewController(animated: true)
        var currentControllerArray = navigationController?.viewControllers
        currentControllerArray?.removeLast()
        if let newController = currentControllerArray {
            navigationController?.viewControllers = newController
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
