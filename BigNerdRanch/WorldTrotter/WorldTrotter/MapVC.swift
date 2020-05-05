//
//  MapVC.swift
//  WorldTrotter
//
//  Created by Volodymyr Ostapyshyn on 04.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    let mainLabel = UILabel()
    let mainSwitch = UISwitch()
    
    
    override func loadView() {
        // Create a map view
        mapView = MKMapView()
        
        // Set it as *the* view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        //let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        //let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo:view.trailingAnchor)
        let margins = view.layoutMarginsGuide
        
        let leadingConstraint   = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint  = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive      = true
        leadingConstraint.isActive  = true
        trailingConstraint.isActive = true
        
        //add Label:
        view.addSubview(mainLabel)
        mainLabel.text = "Points of Interest"
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let leadingLabelConstraint = mainLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        //let trailingLabelConstraint = mainLabel.trailingAnchor.constraint(equalTo: mainSwitch.leadingAnchor)
        let topLabelConstraint = mainLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 12)
        
        
        leadingLabelConstraint.isActive     = true
        topLabelConstraint.isActive         = true
        //trailingLabelConstraint.isActive    = true
        
        
        //add Switch:
        
        view.addSubview(mainSwitch)
        //segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        mainSwitch.translatesAutoresizingMaskIntoConstraints = false
        mainSwitch.addTarget(self, action: #selector(switchChanged(_:)), for: .valueChanged)
        //
        let topSwitchConstraint         = mainSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
        //let center                      = mainSwitch.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1)
        
        let leadingSwitchConstraint     = mainSwitch.leadingAnchor.constraint(equalTo: mainLabel.trailingAnchor, constant: 10)
        
        
        
        
        leadingSwitchConstraint.isActive    = true
        topSwitchConstraint.isActive        = true
        //center.isActive = true
        
        
        
        
        
        
    }
    
//    func configureLabel() {
//        view.addSubview(titleLabel)
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.text = "Rules"
//        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
//        titleLabel.textAlignment = .center
//
//        NSLayoutConstraint.activate([
//            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60)
//        ])
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view.")
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    @objc func switchChanged(_ segControl: UISwitch) {
        let categories:[MKPointOfInterestCategory] = [.cafe]
        let filters = MKPointOfInterestFilter(including: categories)
        
        
        if segControl.isOn {
            mapView.pointOfInterestFilter = .some(filters)
        } else {
            mapView.pointOfInterestFilter = nil
        }
    }
    
    
    
}
