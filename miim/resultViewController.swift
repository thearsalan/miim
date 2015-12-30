//
//  ViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/23/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

//    @IBOutlet weak var resultTitle: UILabel!
//    @IBOutlet weak var resultDate: UILabel!
    @IBOutlet weak var containerA: UIView!
    @IBOutlet weak var containerB: UIView!
    @IBOutlet weak var containerC: UIView!
    @IBOutlet weak var containerD: UIView!
    
    
    var sentTitle:String!
    var sentDate:String!
    
    @IBOutlet weak var resultSegments: UISegmentedControl!
    
    @IBAction func resultIndexChange(sender: UISegmentedControl) {
        
        switch resultSegments.selectedSegmentIndex
        {
        case 0:
            UIView.animateWithDuration(0.5, animations: {
                self.containerA.alpha = 1
                self.containerB.alpha = 0
                self.containerC.alpha = 0
                self.containerD.alpha = 0
            })
        case 1:
            UIView.animateWithDuration(0.5, animations: {
                self.containerA.alpha = 0
                self.containerB.alpha = 1
                self.containerC.alpha = 0
                self.containerD.alpha = 0
            })
        case 2:
            UIView.animateWithDuration(0.5, animations: {
                self.containerA.alpha = 0
                self.containerB.alpha = 0
                self.containerC.alpha = 1
                self.containerD.alpha = 0
            })
        case 3:
            UIView.animateWithDuration(0.5, animations: {
                self.containerA.alpha = 0
                self.containerB.alpha = 0
                self.containerC.alpha = 0
                self.containerD.alpha = 1
            })
        default:
            UIView.appearance().backgroundColor = UIColor.whiteColor()
//            UIView.animateWithDuration(0.5, animations: {
//                self.containerA.alpha = 0
//                self.containerB.alpha = 0
//                self.containerC.alpha = 0
//                self.containerD.alpha = 1
//            })
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.containerA.alpha = 1
        
        
        let backBtn : UIBarButtonItem = UIBarButtonItem(title:"بازگشت"+" "+">", style: UIBarButtonItemStyle.Plain, target:self, action: "popToRoot")
backBtn.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
        self.navigationItem.leftBarButtonItem = backBtn
        
        
//        print(sentTitle)
//        print(sentDate)
        
        
        //sent from tableviewcontroller
        //resultTitle.text = sentTitle
        //resultTitle.hidden = false
        //resultDate.text = sentDate
        //resultDate.hidden = false

    }

    
    func popToRoot(){
        self.navigationController!.popToRootViewControllerAnimated(true)
        print("back")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //segue for moving data from resultViewController to ContainerC (sabz)
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "res2sabzsegue") {
            
            let VC = segue.destinationViewController as! containerCViewController
            
                VC.sentTitleC = sentTitle
                VC.sentDateC = sentDate
        }
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
