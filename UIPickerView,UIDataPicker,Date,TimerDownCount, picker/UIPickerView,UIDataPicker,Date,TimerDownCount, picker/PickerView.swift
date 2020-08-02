//
//  PickerView.swift
//  UIPickerView,UIDataPicker,Date,TimerDownCount, picker
//
//  Created by Volodymyr Ostapyshyn on 01.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class PickerView: UIViewController {

        let picker = UIPickerView()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            picker.center = view.center
            
            picker.dataSource = self
            picker.delegate = self
            
            view.addSubview(picker)
        }
    }

    extension PickerView: UIPickerViewDataSource {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return 10
        }
        
    }

    extension PickerView: UIPickerViewDelegate {
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            let result = "row \(row)"
            return result
        }
}
