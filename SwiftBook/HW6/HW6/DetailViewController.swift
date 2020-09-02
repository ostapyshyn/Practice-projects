//
//  DetailViewController.swift
//  HW6
//
//  Created by Volodymyr Ostapyshyn on 02.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var name: String!
    var email: String!
    var phone: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        emailLabel.text = email
        phoneLabel.text = phone
        
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
