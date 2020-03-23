//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Volodymyr Ostapyshyn on 21.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var recordButton: UIButton!
    @IBOutlet var recordingLabel: UILabel!
    @IBOutlet var stopRecording: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stopRecording.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will Appear")
        //stopRecording.isHidden = true

        
        
        
        
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        print("Start recording!")
        recordingLabel.text = "Recording in Progress"
        stopRecording.isEnabled = true
        recordButton.isEnabled = false
        
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        print("Stop recording!")
        recordingLabel.text = "Tap To Record"
        stopRecording.isEnabled = false
        recordButton.isEnabled = true
    }
}

