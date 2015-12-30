//
//  freeTimeViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/26/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit



class freeTimeViewController: UIViewController {

    @IBOutlet weak var shanbeHours: UILabel!
    @IBOutlet weak var yekshanbeHours: UILabel!
    @IBOutlet weak var doshanbeHours: UILabel!
    @IBOutlet weak var seshanbeHours: UILabel!
    @IBOutlet weak var charshanbeHours: UILabel!
    @IBOutlet weak var panjshanbeHours: UILabel!
    @IBOutlet weak var jomeHours: UILabel!
    @IBOutlet weak var shanbeStepper: UIStepper!
    @IBOutlet weak var yekshanbeStepper: UIStepper!
    @IBOutlet weak var doshanbeStepper: UIStepper!
    @IBOutlet weak var seshanbeStepper: UIStepper!
    @IBOutlet weak var charshanbeStepper: UIStepper!
    @IBOutlet weak var panjshanbeStepper: UIStepper!
    @IBOutlet weak var jomeStepper: UIStepper!
   
    @IBAction func shanbeStepperChanged(sender: UIStepper) {
        shanbeHours.text = Int(sender.value).description
    }
    @IBAction func yekshanbeStepperChanged(sender: UIStepper) {
        yekshanbeHours.text = Int(sender.value).description
    }
    @IBAction func doshanbeStepperChanged(sender: UIStepper) {
        doshanbeHours.text = Int(sender.value).description
    }
    @IBAction func seshanbeStepperChanged(sender: UIStepper) {
        seshanbeHours.text = Int(sender.value).description
    }
    @IBAction func charshanbeStepperChanged(sender: UIStepper) {
        charshanbeHours.text = Int(sender.value).description
    }
    @IBAction func panjshanbeStepperChanged(sender: UIStepper) {
        panjshanbeHours.text = Int(sender.value).description
    }
    @IBAction func jomeStepperChanged(sender: UIStepper) {
        jomeHours.text = Int(sender.value).description
    }
    
    var gpa3: String!
    var gradyear3: String!
    var bsmajor3: String!
    var englishSkill3: String!
    var conceptSkill3: String!
    var analyticSkill3: String!
    var mathSkill3: String!
    var shanbeHours3: Int = 0
    var yekshanbeHours3: Int = 0
    var doshanbeHours3: Int = 0
    var seshanbeHours3: Int = 0
    var charshanbeHours3: Int = 0
    var panjshanbeHours3: Int = 0
    var jomeHours3: Int = 0
    
    @IBAction func resbtn(sender: AnyObject) {
//        print(shanbeHours.text!)
//        print(yekshanbeHours.text!)
//        print(doshanbeHours.text!)
//        print(seshanbeHours.text!)
//        print(charshanbeHours.text!)
//        print(panjshanbeHours.text!)
//        print(jomeHours.text!)
        shanbeHours3 = Int(shanbeHours.text!)!
        yekshanbeHours3 = Int(yekshanbeHours.text!)!
        doshanbeHours3 = Int(doshanbeHours.text!)!
        seshanbeHours3 = Int(seshanbeHours.text!)!
        charshanbeHours3 = Int(charshanbeHours.text!)!
        panjshanbeHours3 = Int(panjshanbeHours.text!)!
        jomeHours3 = Int(jomeHours.text!)!

        performSegueWithIdentifier("3to4segue", sender: self)
    }
    

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "3to4segue") {
            
            let UI4 = segue.destinationViewController as! goalSettingViewController
            
            UI4.gpa4 = gpa3
            UI4.bsmajor4 = bsmajor3
            UI4.gradyear4 = gradyear3
            UI4.englishSkill4 = englishSkill3
            UI4.conceptSkill4 = conceptSkill3
            UI4.analyticSkill4 = analyticSkill3
            UI4.mathSkill4 = mathSkill3
            UI4.shanbeHours4 = shanbeHours3
            UI4.yekshanbeHours4 = yekshanbeHours3
            UI4.doshanbeHours4 = doshanbeHours3
            UI4.seshanbeHours4 = seshanbeHours3
            UI4.charshanbeHours4 = charshanbeHours3
            UI4.panjshanbeHours4 = panjshanbeHours3
            UI4.jomeHours4 = jomeHours3
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        print(gpa3!)
//        print(bsmajor3!)
//        print(gradyear3!)
//        print(mathSkill3!)
//        print(conceptSkill3!)
//        print(analyticSkill3!)
//        print(englishSkill3!)
    
     
        // Custom back Button
        let backBtn : UIBarButtonItem = UIBarButtonItem(title:"مهارتهای تحصیلی"+" "+">", style: UIBarButtonItemStyle.Plain, target:self, action: "popToPrevious")
        backBtn.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
        self.navigationItem.leftBarButtonItem = backBtn
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //custom function to load previous view controller
    func popToPrevious(){
        let switchViewController = self.navigationController?.viewControllers[1] as! eduSkillsViewController
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
