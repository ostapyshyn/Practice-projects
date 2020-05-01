//
//  SecondVC.swift
//  PassDataProject
//
//  Created by Volodymyr Ostapyshyn on 01.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var login: String?
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else { return }
        label.text = "Hello \(login)!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackButton(_ sender: UIButton) {
        performSegue(withIdentifier: "main", sender: nil)
        
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
