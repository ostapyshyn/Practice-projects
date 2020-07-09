//
//  RestaurantTableVC.swift
//  FoodPin
//
//  Created by Volodymyr Ostapyshyn on 05.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class RestaurantTableVC: UITableViewController {
    
    var restaurantIsVisited = Array(repeating: false, count: 21)
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Ho ng Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causu al Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood" , "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "L atin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oy ster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Choc olate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.cellLayoutMarginsFollowReadableWidth = true // for ipad
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath) as! RestaurantTableViewCell
        
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.locationLabel.text = restaurantLocations[indexPath.row]
        cell.typeLabel.text = restaurantTypes[indexPath.row]
        
        cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
        cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.bounds.width / 2

        cell.thumbnailImageView.clipsToBounds = true
        
        if restaurantIsVisited[indexPath.row] {
            //cell.accessoryType = .checkmark
            cell.checkMarkImage.isHidden = false
        } else {
            //cell.accessoryType = .none
            cell.checkMarkImage.isHidden = true
        }
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let cell = tableView.cellForRow(at: indexPath) as! RestaurantTableViewCell
        let checkAction = UIContextualAction(style: .normal, title: "Check") { (action, sourceView, completionHandler) in
            
            if action.image == UIImage(named: "undo") {
                cell.checkMarkImage.isHidden = true
                self.restaurantIsVisited[indexPath.row] = false
            } else {
                cell.checkMarkImage.isHidden = false
                self.restaurantIsVisited[indexPath.row] = true
            }
            
            
            completionHandler(true)
        }
        
        
        checkAction.backgroundColor = UIColor.green
        if !cell.checkMarkImage.isHidden {
            checkAction.image = UIImage(named: "undo")
        } else {
            checkAction.image = UIImage(named: "tick")
            
        }
        
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [checkAction])
        return swipeConfiguration
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
            // Delete the row from the data source
            self.restaurantNames.remove(at: indexPath.row)
            self.restaurantLocations.remove(at: indexPath.row)
            self.restaurantTypes.remove(at: indexPath.row)
            self.restaurantIsVisited.remove(at: indexPath.row)
            self.restaurantImages.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            // Call completion handler to dismiss the action button
            
            completionHandler(true)
        }
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action , sourceView, completionHandler) in
            let defaultText = "Just checking in at " + self.restaurantNames[indexPath.row]
            
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            
            if let popoverController = activityController.popoverPresentationController { if let cell = tableView.cellForRow(at: indexPath) {
            popoverController.sourceView = cell
            popoverController.sourceRect = cell.bounds }
            }
            
            
                self.present(activityController, animated: true, completion: nil)
                completionHandler(true)
        }
        deleteAction.backgroundColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        deleteAction.image = UIImage(named: "delete")
        shareAction.backgroundColor = UIColor(red: 254.0/255.0, green: 149.0/255.0, blue: 38.0/255.0, alpha: 1.0)
        shareAction.image = UIImage(named: "share")
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        return swipeConfiguration
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Create an option menu as an action sheet
        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
        if let popoverController = optionMenu.popoverPresentationController { if let cell = tableView.cellForRow(at: indexPath) {
        popoverController.sourceView = cell
        popoverController.sourceRect = cell.bounds }
        }
        // Add actions to the menu
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil )
        optionMenu.addAction(cancelAction)
        // Add Call action
        let callActionHandler = { (action:UIAlertAction!) -> Void in
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
            self.present(alertMessage, animated: true, completion: nil) }
        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
        optionMenu.addAction(callAction)
        
        let cell = tableView.cellForRow(at: indexPath) as! RestaurantTableViewCell
        
        if cell.checkMarkImage.isHidden == false {
            let checkInAction = UIAlertAction(title: "Undo Check in", style: .default, handler: { (action:UIAlertAction!) -> Void in//The above code shows you another way to use closure. You can write the closure inline as a parameter of the handler. This is the preferred way as the code is clearer and more readable.
                //let cell = tableView.cellForRow(at: indexPath)
                //cell?.accessoryType = .none
                cell.checkMarkImage.isHidden = true
                self.restaurantIsVisited[indexPath.row] = false
            })
            optionMenu.addAction(checkInAction)
            
        } else {
            // Check-in action
            let checkInAction = UIAlertAction(title: "Check in", style: .default, handler: { (action:UIAlertAction!) -> Void in//The above code shows you another way to use closure. You can write the closure inline as a parameter of the handler. This is the preferred way as the code is clearer and more readable.
                //let cell = tableView.cellForRow(at: indexPath)
                //var imageView = UIImageView(image: UIImage(named:"heart-tick"))
                //imageView  = UIImageView(image: UIImage(named: "heart-tick"))
                cell.checkMarkImage.isHidden = false

                // then set it as cellAccessoryType
                //cell!.accessoryView = imageView
                //cell?.accessoryType = .checkmark
                self.restaurantIsVisited[indexPath.row] = true
            })
            optionMenu.addAction(checkInAction)
        }
        
        
        
        
        // Display the menu
        present(optionMenu, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
