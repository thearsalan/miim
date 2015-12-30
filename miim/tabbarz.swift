//
//  tabbarz.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/26/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class tabbarz: UITabBar {
    var tableview:UITableViewController = UITableViewController()
    let item: UITabBarItem = UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
