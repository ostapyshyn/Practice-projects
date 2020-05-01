//
//  ViewController.swift
//  PassDataProject
//
//  Created by Volodymyr Ostapyshyn on 01.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func loginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "details", sender: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondVC else { return }
        print("test1")
        dvc.login = login.text
    }
    
    @IBAction func unwindToMainn(segue: UIStoryboardSegue) {
        guard segue.identifier == "main" else { return }
        guard let source = segue.source as? SecondVC else { return }
        resultLabel.text = source.label.text

    }
    
    
    
    
}

