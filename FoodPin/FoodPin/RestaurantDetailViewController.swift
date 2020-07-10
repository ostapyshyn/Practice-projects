//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Volodymyr Ostapyshyn on 10.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var type: UILabel!
    @IBOutlet var location: UILabel!
    
    @IBOutlet var restaurantImageView: UIImageView!
    var restaurantImageName = ""
    var nameCafe = ""
    var typeCafe = ""
    var locationCafe = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        restaurantImageView.image = UIImage(named: restaurantImageName)
        
        name.text = nameCafe
        
        type.text = typeCafe
        location.text = locationCafe
        // Do any additional setup after loading the view.
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
