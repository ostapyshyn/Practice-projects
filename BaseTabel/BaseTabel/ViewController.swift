//
//  ViewController.swift
//  BaseTabel
//
//  Created by Volodymyr Ostapyshyn on 02.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataArray: [String] = ["Anna", "Daria", "Masha"]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Add", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { (textField) in
            textField.placeholder = "enter"
        }
        let alertAction1 = UIAlertAction(title: "Добавити", style: .default) { (alertAction) in
            self.dataArray.append(alert.textFields![0].text!)
            self.tableView.reloadData()
        }
        let alertAction2 = UIAlertAction(title: "Відміна", style: .cancel, handler: nil)
        alert.addAction(alertAction1)
        alert.addAction(alertAction2)
        present(alert, animated: true, completion: nil)
        
//        dataArray.append("New Element")
//        tableView.reloadData()
    }
    

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Delete"
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        dataArray.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }


}



