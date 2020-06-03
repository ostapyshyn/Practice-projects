//
//  ShowVC.swift
//  BaseTabel
//
//  Created by Volodymyr Ostapyshyn on 03.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ShowVC: UIViewController {
    
    @IBOutlet var showLabel: UILabel!
    var strData: String?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showLabel.text = strData
        // Do any additional setup after loading the view.
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
