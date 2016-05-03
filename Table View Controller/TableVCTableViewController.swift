//
//  TableVCTableViewController.swift
//  Table View Controller
//
//  Created by Sean Perez on 4/25/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class TableVCTableViewController: UITableViewController {
    
    var cars = ["BMW", "Ford", "Chevy", "Volvo", "Subaru"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)

        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"

        return cell
    }

}
