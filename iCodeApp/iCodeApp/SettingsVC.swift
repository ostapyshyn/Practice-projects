//
//  SettingsVC.swift
//  iCodeApp
//
//  Created by Volodymyr Ostapyshyn on 20.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToGreen(_ sender: UIButton) {
        let text = textField.text
        let newVC = storyboard?.instantiateViewController(withIdentifier: "GreenVC")
        navigationController?.pushViewController(newVC!, animated: true)
        
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
