//
//  NewRestaurantController.swift
//  FoodPin
//
//  Created by Volodymyr Ostapyshyn on 04.08.2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class NewRestaurantController: UITableViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        
        if let customFont = UIFont(name: "Rubik-Medium", size: 35.0) {
            navigationController?.navigationBar.largeTitleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor(red: 231, green: 76, blue: 60), NSAttributedString.Key.font: customFont ]
        }
        
    }
    

    
    @IBOutlet var nameTextField: RoundedTextField! {
        didSet {
            nameTextField.tag = 1
            nameTextField.becomeFirstResponder()
            nameTextField.delegate = self
        }
        
    }
    
    @IBOutlet var typeTextField: RoundedTextField! {
        didSet {
            typeTextField.tag = 2
            typeTextField.delegate = self
            
        }
    }
    
    @IBOutlet var addressTextField: RoundedTextField! {
        didSet {
            addressTextField.tag = 3
            addressTextField.delegate = self
            
        }
    }
    
    @IBOutlet var phoneTextField: RoundedTextField! {
        didSet {
            phoneTextField.tag = 4
            phoneTextField.delegate = self }
    }
    
    @IBOutlet var descriptionTextView: UITextView! {
        didSet {
            descriptionTextView.tag = 5
            descriptionTextView.layer.cornerRadius = 5.0
            descriptionTextView.layer.masksToBounds = true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextTextField = view.viewWithTag(textField.tag + 1) {
            textField.resignFirstResponder()
            nextTextField.becomeFirstResponder()
            
        }
        return true
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath) {
        if indexPath.row == 0 {
            let photoSourceRequestController = UIAlertController(title: "", message: "Choose your photo source", preferredStyle: .actionSheet)
            
            let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { (action) in
                
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    let imagePicker = UIImagePickerController()
                    imagePicker.delegate = self
                    imagePicker.allowsEditing = false
                    imagePicker.sourceType = .camera
                    self.present(imagePicker, animated: true, completion: nil)
                    
                }
            })
            
            let photoLibraryAction = UIAlertAction(title: "Photo library", style: .default, handler: { (action) in
              
                    if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
                    let imagePicker = UIImagePickerController()
                    imagePicker.delegate = self
                    imagePicker.allowsEditing = false
                    imagePicker.sourceType = .photoLibrary
                    self.present(imagePicker, animated: true, completion: nil)
                }
                
            })
            
            photoSourceRequestController.addAction(cameraAction)
            photoSourceRequestController.addAction(photoLibraryAction)
            
            // For iPad
            if let popoverController = photoSourceRequestController.popoverPresentationController {
                if let cell = tableView.cellForRow(at: indexPath) { popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
                
            }
            present(photoSourceRequestController, animated: true, completion: nil) }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = selectedImage
            photoImageView.contentMode = .scaleAspectFill
            photoImageView.clipsToBounds = true
        }
            dismiss(animated: true, completion: nil)
    }
    
}
