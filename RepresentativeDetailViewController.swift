//
//  RepresentativeDetailViewController.swift
//  Representatives
//
//  Created by James Pacheco on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class RepresentativeDetailViewController: UITableViewController {

    var representative: Representative?
    
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

        return 5
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 80.0
        } else {
            return 44.0
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        guard let representative = representative else {return UITableViewCell()}
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCellWithIdentifier("repCell", forIndexPath: indexPath)
            if let name = representative.name {
                cell.textLabel?.text = name
            }
            
            guard let state = representative.state, district = representative.district else {break}
            cell.detailTextLabel?.text = state + " - " + district
            cell.imageView?.image = UIImage(named: state)
            
            
        case 1:
            cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Party"
            if let party = representative.party {
                cell.detailTextLabel?.text = party
            }
        case 2:
            cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Website"
            if let link = representative.link {
                cell.detailTextLabel?.text = link
            }
        case 3:
            cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Phone"
            if let phone = representative.phone {
                cell.detailTextLabel?.text = phone
            }
        case 4:
            cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Office"
            if let office = representative.office {
                cell.detailTextLabel?.text = office
            }
        default:
            cell = UITableViewCell()
        }

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
