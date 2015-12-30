//
//  containerCViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/27/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class containerCViewController: UIViewController {
    @IBOutlet weak var titleSabz: UILabel!
    @IBOutlet weak var dateSabz: UILabel!

    var sentTitleC: String!
    var sentDateC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        performSegueWithIdentifier("res2sabzsegue", sender: self)
//
        titleSabz.text = sentTitleC
        dateSabz.text = sentDateC
        titleSabz.sizeToFit()
        titleSabz.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
