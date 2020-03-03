//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Volodymyr Ostapyshyn on 21.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var recordingLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        print("Hello there!")
        recordingLabel.text = "Recording in Progress"
    }
    
}

