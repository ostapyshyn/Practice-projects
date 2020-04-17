//
//  ViewController.swift
//  The Night Porter
//
//  Created by Volodymyr Ostapyshyn on 07.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    
    
    
    
    
    let dailyTasks = ["Check all windows",
                      "Check all doors",
                      "Is the boiler fueled?",
                      "Check the mailbox",
                      "Empty trash containers",
                      "If freezing, check water pipes",
                      "Document \" strange and unsual\" occurrences"]
    
    let weeklyTasks = ["Check inside all cabins",
                       "Flush all lavatories in cabins",
                       "Walk the perimeter of property"]
    
    let monthlyTasks = ["Test security alarm",
                        "Test motion detectors",
                        "Test smoke alarms"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleDarkMode(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = UIColor.darkGray
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func changeBackground(_ sender: UIButton) {
        view.backgroundColor = UIColor.darkGray
        
        let all = view.subviews
        
        for currentView in all {
            if currentView is UILabel {
                let label = currentView as! UILabel
                label.textColor = UIColor.blue
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        tableView.backgroundColor = UIColor.clear
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you select row \(indexPath.row) and section \(indexPath.section)")
    }

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { // in storyboard style grouped
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
            cell.imageView?.image = UIImage(named: "clock")
            cell.accessoryType = .disclosureIndicator
            cell.detailTextLabel?.text = "More creepy details"
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "Should not happen"
        }
        cell.backgroundColor = UIColor.clear
        return cell
        
    }
}

