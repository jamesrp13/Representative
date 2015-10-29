//
//  ResultsTableViewController.swift
//  Representatives
//
//  Created by Michael Wilkowski on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    
    var representatives: [Representative] = []
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
        return self.representatives.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath)
        
        if let name = representatives[indexPath.row].name{
            cell.textLabel?.text = name
        }
        
        if let party = representatives[indexPath.row].party{
            
            cell.detailTextLabel?.text = party
        }

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailSegue" {
            let detailViewController = segue.destinationViewController as! RepresentativeDetailViewController
            let cell = sender as! UITableViewCell
            let indexPath = tableView.indexPathForCell(cell)!
            
            detailViewController.representative = self.representatives[indexPath.row]
        }
    }

}
