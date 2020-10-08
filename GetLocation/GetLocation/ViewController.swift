//
//  ViewController.swift
//  GetLocation
//
//  Created by Volodymyr Ostapyshyn on 08.10.2020.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet var mainLabel: UILabel!
    var manager = CLLocationManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Ready!"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let first = locations.first else {
            return
        }
        mainLabel.text = "\(first.coordinate.longitude) | \(first.coordinate.latitude)"
    }


}

