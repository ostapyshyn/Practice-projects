//
//  FirstViewController.swift
//  HW2
//
//  Created by Volodymyr Ostapyshyn on 03.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let color = SettingsViewController()

    
//    @IBAction func editPressed(_ sender: UIBarButtonItem) {
//        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SettingsViewController
//        selectionVC.delegate = self
//        selectionVC.colorFromMainVC = view.backgroundColor
//        //present(selectionVC, animated: true, completion: nil)
//
//        //let controller = SettingsViewController()
//        navigationController?.pushViewController(selectionVC, animated: true)
//    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        color.delegate = self
        
        
    }
    
//    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
//        let colorVC = segue.source as! SettingsViewController
//        colorVC.delegate = self
//        colorVC.donePressed()
//        
//    }
    

    
    // MARK: - Navigation

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let colorVC = segue.destination as! SettingsViewController
//        colorVC.colorFromMainVC = view.backgroundColor
//    }
    

}

extension FirstViewController: ColorDelegate {
    
    func setColor(_ color: UIColor, text: String) {
        print("test§")
        view.backgroundColor = color
        
        print(text)
    }
    
}
