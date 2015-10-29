//
//  ResultsTableViewController.swift
//  Representatives
//
//  Created by Michael Wilkowski on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    
    var representatves: [Representative] = []
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.representatves.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath)
        
        if let name = representatves[indexPath.row].name{
            cell.textLabel?.text = name
        }
        
        if let party = representatves[indexPath.row].party{
            
            cell.detailTextLabel?.text = party
        }

        return cell
    }

}
