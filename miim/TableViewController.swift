//
//  TableViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/23/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    
    @IBAction func newPlanButton() {
        performSegueWithIdentifier("newplansegue", sender: self)
        print("newplan")
        
    }


    let titleList = ["عنوان اول","عنوان دوم","عنوان سوم"]
    let datesList = ["تاریخ اول","تاریخ دوم","تاریخ سوم"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let addButton: UIBarButtonItem = UIBarButtonItem(title:"دریافت برنامه جدید", style: UIBarButtonItemStyle.Plain, target:self, action: "newPlanButton")
        addButton.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
        self.navigationItem.rightBarButtonItem = addButton
        

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.planTitle.text = titleList[indexPath.row]
        cell.planDate.text = datesList[indexPath.row]
        
        return cell
    }
  
    
    
    //segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "mainToResults") {
            
            let VC = segue.destinationViewController as! ResultViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                let Title = titleList[indexpath.row] as String
                VC.sentTitle = Title
                let Date = datesList[indexpath.row] as String
                VC.sentDate = Date
            }
        }

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

  
    // MARK: - Navigation


}
