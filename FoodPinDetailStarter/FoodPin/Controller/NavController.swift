//
//  NavController.swift
//  FoodPin
//
//  Created by Volodymyr Ostapyshyn on 21.07.2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController

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
