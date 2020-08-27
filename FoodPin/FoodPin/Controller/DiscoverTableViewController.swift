//
//  DiscoverTableViewController.swift
//  FoodPin
//
//  Created by Volodymyr Ostapyshyn on 24.08.2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit
import CloudKit

class DiscoverTableViewController: UITableViewController {
    
    private var imageCache = NSCache<CKRecord.ID, NSURL>()
    var restaurants: [CKRecord] = []
    var spinner = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Pull To Refresh Control
        refreshControl = UIRefreshControl()
        refreshControl?.backgroundColor = UIColor.white
        refreshControl?.tintColor = UIColor.gray
        refreshControl?.addTarget(self, action: #selector(fetchRecordsFromCloud),
                                  for: UIControl.Event.valueChanged)
        
        spinner.style = .medium
        spinner.hidesWhenStopped = true
        view.addSubview(spinner)
        
        // Define layout constraints for the spinner
        spinner.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([ spinner.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:150.0),
            spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        
        // Activate the spinner
        spinner.startAnimating()

        tableView.cellLayoutMarginsFollowReadableWidth = true
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Configure navigation bar appearance
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        if let customFont = UIFont(name: "Rubik-Medium", size: 40.0) {
        navigationController?.navigationBar.largeTitleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor(red: 231, green: 76, blue: 60), NSAttributedString.Key.font: customFont ]
        }
        fetchRecordsFromCloud()
    }
    
    @objc func fetchRecordsFromCloud() {
        // Fetch data using Convenience API
        let cloudContainer = CKContainer.default()
        let publicDatabase = cloudContainer.publicCloudDatabase
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Restaurant", predicate: predicate)
        publicDatabase.perform(query, inZoneWith: nil, completionHandler: {
            (results, error) -> Void in
            if let error = error { print(error)
                return
            }
            if let results = results {
                print("Completed the download of Restaurant data")
                self.restaurants = results
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
        })
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverCell" , for: indexPath)
        
        // Configure the cell...
        let restaurant = restaurants[indexPath.row]
        cell.textLabel?.text = restaurant.object(forKey: "name") as? String
        
        // Set the default image
        cell.imageView?.image = UIImage(named: "photo")
        
        if let image = restaurant.object(forKey: "image"), let imageAsset = image as? CKAsset {
            
            if let imageData = try? Data.init(contentsOf: imageAsset.fileURL!) { cell.imageView?.image = UIImage(data: imageData)
            }
        }
        return cell
    }
   

    

    
    
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
