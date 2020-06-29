//
//  ViewController.swift
//  TableZalyalov
//
//  Created by Volodymyr Ostapyshyn on 28.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var users: [UserModel] = []

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        users.append(UserModel(name: "Stepan", age: "32"))
        users.append(UserModel(name: "Walter", age: "33"))
        users.append(UserModel(name: "Ksenia", age: "34"))
        users.append(UserModel(name: "Vasya", age: "35"))
        users.append(UserModel(name: "Ostap", age: "36"))
        users.append(UserModel(name: "Petro", age: "37"))
        users.append(UserModel(name: "Misha", age: "38"))
        users.append(UserModel(name: "Tanya", age: "39"))
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomCell

        let model = users[indexPath.row]
        
        cell.configure(with: model)
        
//        cell.textLabel?.text = model.name
//        cell.detailTextLabel?.text = model.age
//        cell.imageView?.image = #imageLiteral(resourceName: "one.jpeg")
        return cell
    }


}

