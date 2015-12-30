//
//  eduSkillsViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/26/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class eduSkillsViewController: UIViewController {

    var gpa2: String!
    var bsmajor2: String!
    var gradyear2: String!
    
    var englishSkill: String! = "medium"
    var analyticSkill: String! = "medium"
    var conceptSkill: String! = "medium"
    var mathSkill: String! = "medium"
    
    @IBOutlet weak var englishSegContr: UISegmentedControl!
    @IBOutlet weak var analyticSegContr: UISegmentedControl!
    @IBOutlet weak var conceptSegContr: UISegmentedControl!
    @IBOutlet weak var mathSegContr: UISegmentedControl!
    
    @IBAction func englishIndexChange(sender: UISegmentedControl) {
        switch englishSegContr.selectedSegmentIndex
        {
        case 0:
            englishSkill = "weak"
        case 1:
            englishSkill = "medium"
        case 2:
            englishSkill = "strong"
        default:
            englishSkill = "medium"
        }
    }
    @IBAction func analyticsIndexChange(sender: UISegmentedControl) {
        switch analyticSegContr.selectedSegmentIndex
        {
        case 0:
            analyticSkill = "weak"
        case 1:
            analyticSkill = "medium"
        case 2:
            analyticSkill = "strong"
        default:
            analyticSkill = "medium"
        }
    }
    @IBAction func conceptIndexChange(sender: UISegmentedControl) {
        switch conceptSegContr.selectedSegmentIndex
        {
        case 0:
            conceptSkill = "weak"
        case 1:
            conceptSkill = "medium"
        case 2:
            conceptSkill = "strong"
        default:
            conceptSkill = "medium"
        }
    }
    @IBAction func mathIndexChange(sender: UISegmentedControl) {
        switch mathSegContr.selectedSegmentIndex
        {
        case 0:
            mathSkill = "weak"
        case 1:
            mathSkill = "medium"
        case 2:
            mathSkill = "strong"
        default:
            mathSkill = "medium"
        }
    }
    
    
    
    
    @IBAction func btn2to3(sender: AnyObject) {

        
        performSegueWithIdentifier("2to3segue", sender: self)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "2to3segue") {
            
            let UI3 = segue.destinationViewController as! freeTimeViewController
            
            UI3.gpa3 = gpa2
            UI3.bsmajor3 = bsmajor2
            UI3.gradyear3 = gradyear2
            UI3.englishSkill3 = englishSkill
            UI3.conceptSkill3 = conceptSkill
            UI3.analyticSkill3 = analyticSkill
            UI3.mathSkill3 = mathSkill
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        print(gpa2!)
//        print(bsmajor2!)
//        print(gradyear2!)
        //print("yebar")
 
        
        // Custom back Button
        let backBtn : UIBarButtonItem = UIBarButtonItem(title:"سوابق تحصیلی"+" "+">", style: UIBarButtonItemStyle.Plain, target:self, action: "popToPrevious")
        backBtn.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
        self.navigationItem.leftBarButtonItem = backBtn
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //custom function to load previous view controller
    func popToPrevious(){
        let switchViewController = self.navigationController?.viewControllers[0] as! eduRecordsViewController
        self.navigationController!.popToViewController(switchViewController, animated: true)
        print("back")
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
