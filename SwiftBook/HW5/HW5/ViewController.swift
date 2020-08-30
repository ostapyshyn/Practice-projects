//
//  ViewController.swift
//  HW5
//
//  Created by Volodymyr Ostapyshyn on 30.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let name = "Walter"
    private let password = "r"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.delegate = self
        passwordTF.delegate = self
        
    }
    
    @IBAction func LogInPressed(_ sender: UIButton) {
        if nameTF.text == name, passwordTF.text == password {
            performSegue(withIdentifier: "login", sender: self)
        } else {
            showAlert(title: "Invalid login or password", message: "Please,  enter correct login and password")
        }
    }
    
    @IBAction func ForgotNamePressed(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your name is \(name)")
    }
    
    @IBAction func ForgotPasswordPressed(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "login" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.labelName = nameTF.text
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true) 
    }

    
}


extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

