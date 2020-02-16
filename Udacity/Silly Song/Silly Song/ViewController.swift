//
//  ViewController.swift
//  Silly Song
//
//  Created by Volodymyr Ostapyshyn on 15.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit


func shortNameFromName(name: String) -> String {
    //let lowercaseName = name.lowercased()
    let vowelSet = CharacterSet(charactersIn: "aeiou")
    
    if name.prefix(1).rangeOfCharacter(from: vowelSet) != nil {
        print("yes")
        return name
    } else {
        var name1 = name
        name1.remove(at: name1.startIndex)
        return name1
    }
}

let bananaFanaTemplate = [
"<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
"Banana Fana Fo F<SHORT_NAME>",
"Me My Mo M<SHORT_NAME>",
"<FULL_NAME>"].joined(separator: "\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shortname:String = shortNameFromName(name: fullName)
    
    let result = [ "\(fullName), \(fullName), Bo B\(shortname)",
    "Banana Fana Fo F\(shortname)",
    "Me My Mo M\(shortname)",
    "\(fullName)"].joined(separator: "\n")
    
    return result
}

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var lyricsField: UITextView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameField.delegate = self
    }

    @IBAction func reset(_ sender: UITextField) {
        nameField.text = ""
        lyricsField.text = ""
    }
    
    @IBAction func displayLyrics(_ sender: UITextField) {
        if !nameField.text!.isEmpty {
            lyricsField.text = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: nameField.text!)
        }
        
        
        
    }
    
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
