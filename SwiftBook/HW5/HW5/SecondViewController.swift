//
//  SecondViewController.swift
//  HW5
//
//  Created by Volodymyr Ostapyshyn on 30.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var loginNameLabel: UILabel!
    var labelName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = labelName {
            loginNameLabel.text = "Welcome, \(name)!"
        }
        
    }
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
