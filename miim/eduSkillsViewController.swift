//
//  eduSkillsViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/25/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class eduSkillsViewController: UIViewController {
    @IBAction func newbutton(sender: AnyObject) {
        performSegueWithIdentifier("2to3segue", sender: self)
    }
   
    @IBAction func back2to1(sender: AnyObject) {
        performSegueWithIdentifier("2to1segue", sender: self)
    }
    
    
//    @IBAction func backButton(sender: AnyObject) {
//        performSegueWithIdentifier("2to1segue", sender: self)
//    }
    
    
    var gpa2: String!
    var gradyear2: String!
    var bsmajor2: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // print(gpa2)
       // print(gradyear2)
       // print(bsmajor2)
        
        // Do any additional setup after loading the view.
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
