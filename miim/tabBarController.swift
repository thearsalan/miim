//
//  tabViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/26/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class tabBarController: UITabBarController {
    
    //let titleList = ["عنوان اول","عنوان دوم","عنوان سوم"]

    
    //var planscount = String(titleList.count)
    //var planscount = String(3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 8.5)!], forState: UIControlState.Normal)
        
        //self.tabBar.items![0].badgeValue = planscount
        
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
