//
//  ViewController.swift
//  The Night Porter
//
//  Created by Volodymyr Ostapyshyn on 07.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet var tableView: UITableView!
    
    var dailyTasks = [
        Task(name: "Check all windows", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Check all doors", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Is the boiler fueled?", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Check the mailbox", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Empty trash containers", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "If freezing, check water pipes", type: .daily, completed: false, lastCompleted: nil),
        Task(name: "Document \" strange and unsual\" occurrences", type: .daily, completed: false, lastCompleted: nil)
    ]
        
    var weeklyTasks = [
        Task(name: "Check inside all cabins", type: .weekly, completed: false, lastCompleted: nil),
        Task(name: "Flush all lavatories in cabins", type: .weekly, completed: false, lastCompleted: nil),
        Task(name: "Walk the perimeter of property", type: .weekly, completed: false, lastCompleted: nil)
    ]
    
    var monthlyTasks = [
        Task(name: "Test security alarm", type: .monthly, completed: false, lastCompleted: nil),
        Task(name: "Test motion detectors", type: .monthly, completed: false, lastCompleted: nil),
        Task(name: "Test smoke alarms", type: .monthly, completed: false, lastCompleted: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetList(_ sender: UIBarButtonItem) {
        
        let confirm = UIAlertController(title: "Are you sure?", message: "Really reset the list?", preferredStyle:. alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: .destructive) {
            
            action in
            
            for task in 0..<self.dailyTasks.count {
                self.dailyTasks[task].completed = false
            }
            
            for task in 0..<self.weeklyTasks.count {
                self.weeklyTasks[task].completed = false
            }
            
            for task in 0..<self.monthlyTasks.count {
                self.monthlyTasks[task].completed = false
            }
            
            self.tableView.reloadData()
            
        }
        
        let noAction = UIAlertAction(title: "No", style: .cancel) {
            action in
            print("OK")
        }
        
        confirm.addAction(yesAction)
        confirm.addAction(noAction)
        
        present(confirm, animated: true, completion: nil)
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
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let completeAction = UIContextualAction(style: .normal, title: "Complete") { (action: UIContextualAction, sourceView: UIView, actionPerformed: (Bool) -> Void) in
            
            switch indexPath.section {
            case 0:
                self.dailyTasks[indexPath.row].completed = true
            case 1:
                self.weeklyTasks[indexPath.row].completed = true
            case 2:
                self.monthlyTasks[indexPath.row].completed = true
            default:
                break
            }
            
            tableView.reloadData()
            actionPerformed(true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [completeAction])
        
    
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
        var currentTask: Task!
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = monthlyTasks[indexPath.row]
        default:
            break
        }
        
        cell.textLabel?.text = currentTask.name
        
        if currentTask.completed {
            cell.textLabel?.textColor = UIColor.lightGray
            cell.accessoryType = .checkmark
        } else {
            cell.textLabel?.textColor = UIColor.black
            cell.accessoryType = .none
        }
        
        
        
        cell.backgroundColor = UIColor.clear
        return cell
    }
}

