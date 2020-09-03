//
//  ViewController.swift
//  HW2
//
//  Created by Volodymyr Ostapyshyn on 26.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

protocol ColorDelegate {
    func setColor(_ color: UIColor, text: String)
}

class SettingsViewController: UIViewController, UITextFieldDelegate {

    var delegate: ColorDelegate?
    
    var colorFromMainVC: UIColor!
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redTF: UITextField!
    @IBOutlet var greenTF: UITextField!
    @IBOutlet var blueTF: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        configureSliders()
        configureLabels()
        configureTexFields()
        updateColor()
        colorView.backgroundColor = colorFromMainVC
        
    }
    
    
    
    func configureSliders() {
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        
    }
    
    func configureLabels() {
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }
    
    func configureTexFields() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action:  #selector(doneClicked))
        toolBar.setItems([flexibleSpace, doneButton], animated: true)
    
        redTF.text = String(redSlider.value)
        redTF.keyboardType = .decimalPad
        redTF.borderStyle = .roundedRect
        redTF.contentVerticalAlignment = .center
        redTF.textAlignment = .center
        redTF.delegate = self
        redTF.inputAccessoryView = toolBar
        
        greenTF.text = String(greenSlider.value)
        greenTF.keyboardType = .decimalPad
        greenTF.borderStyle = .roundedRect
        greenTF.contentVerticalAlignment = .center
        greenTF.textAlignment = .center
        greenTF.delegate = self
        greenTF.inputAccessoryView = toolBar
        
        blueTF.text = String(blueSlider.value)
        blueTF.keyboardType = .decimalPad
        blueTF.borderStyle = .roundedRect
        blueTF.contentVerticalAlignment = .center
        blueTF.textAlignment = .center
        blueTF.delegate = self
        blueTF.inputAccessoryView = toolBar
        
    }
    
    @objc func doneClicked() {
        setSliderAndLabels()
        view.endEditing(true)
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        
        let number = Double(redSlider.value)
        let value = String(format: "%.2f", number)
        updateColor()
        
        redLabel.text = value
        redTF.text = value
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        
        let number = Double(greenSlider.value)
        let value = String(format: "%.2f", number)
        updateColor()
        
        greenLabel.text = value
        greenTF.text = value
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        
        let number = Double(blueSlider.value)
        let value = String(format: "%.2f", number)
        updateColor()
        
        blueLabel.text = value
        blueTF.text = value
    }
    
    @IBAction func donePressed() {
        let color = colorView.backgroundColor
        delegate?.setColor(color ?? .red, text: "Hello")
        print("hi")
        dismiss(animated: true, completion: nil) //
        //print(colorView.backgroundColor!)
    }
    
     
    
    
    
    
    
    
    
    func updateColor() {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green,blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
        
    }
    
    func setSliderAndLabels() {
        
        if let number = redTF.text, let value = Float(number) {
            redSlider.value = value
            redLabel.text = number
        }
        
        if let number = greenTF.text, let value = Float(number) {
            greenSlider.value = value
            greenLabel.text = number
        }
        
        if let number = blueTF.text, let value = Float(number) {
            blueSlider.value = value
            blueLabel.text = number
        }
        
        updateColor()
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        setSliderAndLabels()
        return true
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

