//
//  ViewController.swift
//  UIPickerView,UIDataPicker,Date,TimerDownCount, picker
//
//  Created by Volodymyr Ostapyshyn on 31.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let picker = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        picker.dataSource = self
        view.addSubview(picker)
        
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
}

