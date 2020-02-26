//
//  ViewController.swift
//  Delegate
//
//  Created by Volodymyr Ostapyshyn on 26.02.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController:  UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the data for this row
        let rowData = dataArray[indexPath.row]
        // Get a cell to display
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        cell.textLabel?.text = rowData
        // Return the cell
        return cell
    }
    

    @IBOutlet var myTableView: UITableView!
     let dataArray = ["bird", "dog", "cat", "turtle", "bear"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        
        
        
    }


}

