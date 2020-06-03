//
//  PhotoVC.swift
//  PhotoTapps
//
//  Created by Volodymyr Ostapyshyn on 03.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class PhotoVC: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet var viewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewImage.image = image
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapToShare(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
        
        present(shareController, animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
