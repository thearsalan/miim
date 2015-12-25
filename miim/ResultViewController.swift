//
//  ViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/23/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultTitle: UILabel!
    @IBOutlet weak var resultDate: UILabel!
    
    
    var sentTitle:String!
    var sentDate:String!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backBtn : UIBarButtonItem = UIBarButtonItem(title:"بازگشت"+" "+">", style: UIBarButtonItemStyle.Plain, target:self, action: "popToRoot")
backBtn.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
        self.navigationItem.leftBarButtonItem = backBtn
        
        
        //sent from tableviewcontroller
        resultTitle.text = sentTitle
        resultDate.text = sentDate
//        
//        let backButton = UIBarButtonItem()
//        backButton.title = "بازگشت"
//        if let font = UIFont(name: "IRANSans", size: 13) {
//            backButton.setTitleTextAttributes([NSFontAttributeName: font], forState: UIControlState.Normal)
//        }

        
//        if let font = UIFont(name: "IRANSans", size: 13) {
//            barBtn.setTitleTextAttributes([NSFontAttributeName: font], forState: UIControlState.Normal)
//        }

        // Do any additional setup after loading the view.
    }

    
    func popToRoot(){
        self.navigationController!.popToRootViewControllerAnimated(true)
        print("back")
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
