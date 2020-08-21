//
//  ViewController.swift
//  UIProgressView
//
//  Created by Volodymyr Ostapyshyn on 20.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myProgressView = UIProgressView()
    var myButton = UIButton()
    var myTime = Timer()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createProgress(myProgressView)
        createButton(myButton)
        createTimer()
    }
    
    func createTimer() {
        myTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateProgressView), userInfo: nil, repeats: true)
    }
    
    @objc func updateProgressView() {
        if myProgressView.progress != 1.0 {
            myProgressView.progress += 0.1 / 1.0
        } else if myProgressView.progress == 1.0 {
            UIView.animate(withDuration: 0.7) {
                self.myButton.alpha = 1
                self.myButton.setTitle("Start", for: .normal)
                self.myTime.invalidate()
            }
        }
    }

    func createProgress(_ progressView: UIProgressView) {
        progressView.progressViewStyle = .bar
        progressView.frame = CGRect(x: view.center.x , y: view.center.y, width: 150, height: 50)
        progressView.setProgress(0.0, animated: false)
        progressView.progressTintColor = .green
        progressView.trackTintColor = .gray
        progressView.center = view.center
        view.addSubview(progressView)
    }

    
    func createButton(_ button: UIButton) {
        button.frame = CGRect(x: view.bounds.size.width / 4, y: view.center.y + 100, width: 150, height: 50)
        button.setTitle("загрузка...", for: .normal)
        button.alpha = 0.2
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        view.addSubview(button)
        
        
    }

}

