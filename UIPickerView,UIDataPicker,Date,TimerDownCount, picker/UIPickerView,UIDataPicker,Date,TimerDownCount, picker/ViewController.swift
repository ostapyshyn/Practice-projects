//
//  ViewController.swift
//  UIPickerView,UIDataPicker,Date,TimerDownCount, picker
//
//  Created by Volodymyr Ostapyshyn on 31.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let picker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        
        //picker.datePickerMode = .date
        picker.datePickerMode = .countDownTimer
        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60
        
        let todayDate = Date()
        
        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
        let twoYearsFromToday = todayDate.addingTimeInterval(2 * oneYearTime)
        
        picker.minimumDate = oneYearFromToday
        picker.maximumDate = twoYearsFromToday
        
        picker.countDownDuration = 2 * 60
        
        view.addSubview(picker)
        picker.addTarget(self, action: #selector(datePickerChange(paramDatePicker:)), for: .valueChanged)
    }
    
    @objc func datePickerChange(paramDatePicker: UIDatePicker) {
        if paramDatePicker.isEqual(self.picker) {
            print("date change: = ", paramDatePicker.date)
        }
        
    }
}





