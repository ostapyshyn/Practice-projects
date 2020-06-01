//
//  programConversionVC.swift
//  WorldTrotter
//
//  Created by Volodymyr Ostapyshyn on 07.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit
import MapKit

class programConversionVC: UIViewController {
    
    var myView: UIView!
    
    var firstLabel: UILabel!
    var secondLabel: UILabel!
    var thirdLabel: UILabel!
    var fourthLabel: UILabel!
    var fifthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        
        myView = UIView()
        view = UIView()
        view.backgroundColor = UIColor.white
        configureFirstLabel()
        configureSecondLabel()
        configureThirdLabel()
        configureFourthLabel()
        configureFifthLabel()
        
        //        let firstLabelCenter = firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        //        let firstLabelTop = firstLabel.topAnchor.constraint(equalTo: margins.topAnchor)
        
    }
    
    func configureFirstLabel() {
        firstLabel = UILabel()
        firstLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(firstLabel)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.backgroundColor = UIColor.gray
        firstLabel.textColor = UIColor.brown
        firstLabel.text = "212"
        firstLabel.font = .systemFont(ofSize: 72, weight: .semibold)
        
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureSecondLabel() {
        secondLabel = UILabel()
        secondLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(secondLabel)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        //secondLabel.backgroundColor = UIColor.gray
        secondLabel.textColor = UIColor.brown
        secondLabel.text = "degrees Fahrenheit"
        secondLabel.font = .systemFont(ofSize: 36, weight: .semibold)
        
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 10),
            secondLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureThirdLabel() {
        thirdLabel = UILabel()
        //thirdLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(thirdLabel)
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        //secondLabel.backgroundColor = UIColor.gray
        thirdLabel.textColor = UIColor.black
        thirdLabel.text = "is really"
        thirdLabel.font = .systemFont(ofSize: 36, weight: .semibold)
        
        NSLayoutConstraint.activate([
            thirdLabel.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 10),
            thirdLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureFourthLabel() {
        fourthLabel = UILabel()
        //thirdLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(fourthLabel)
        fourthLabel.translatesAutoresizingMaskIntoConstraints = false
        //secondLabel.backgroundColor = UIColor.gray
        fourthLabel.textColor = UIColor.brown
        fourthLabel.text = "100"
        fourthLabel.font = .systemFont(ofSize: 72, weight: .regular)
        
        NSLayoutConstraint.activate([
            fourthLabel.topAnchor.constraint(equalTo: thirdLabel.bottomAnchor, constant: 10),
            fourthLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureFifthLabel() {
        fifthLabel = UILabel()
        //thirdLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(fifthLabel)
        fifthLabel.translatesAutoresizingMaskIntoConstraints = false
        //secondLabel.backgroundColor = UIColor.gray
        fifthLabel.textColor = UIColor.brown
        fifthLabel.text = "degrees Celcius"
        fifthLabel.font = .systemFont(ofSize: 36, weight: .semibold)
        
        NSLayoutConstraint.activate([
            fifthLabel.topAnchor.constraint(equalTo: fourthLabel.bottomAnchor, constant: 10),
            fifthLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
