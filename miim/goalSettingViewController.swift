//
//  goalSettingViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/27/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class goalSettingViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
   
    @IBOutlet weak var roozaneSwitch: UISwitch!
    @IBOutlet weak var shabaneSwitch: UISwitch!
    @IBOutlet weak var gheyrentefaeiSwitch: UISwitch!
    @IBOutlet weak var payamnoorSwitch: UISwitch!
    @IBOutlet weak var majaziSwitch: UISwitch!
    var roozaneParam: Bool = true
    var shabaneParam: Bool = true
    var gheyrentefaeiParam: Bool = true
    var payamnoorParam: Bool = true
    var majaziParam: Bool = true
    
    @IBAction func roozaneSwitchChanged(sender: UISwitch) {
        if roozaneSwitch.on {
            roozaneParam = true
        }
        else
        {
            roozaneParam = false
        }
    }
    @IBAction func shabaneSwitchChanged(sender: UISwitch) {
        if shabaneSwitch.on {
            shabaneParam = true
        }
        else
        {
            shabaneParam = false
        }
    }
    @IBAction func gheyrentefaeiSwitchChange(sender: UISwitch) {
        if gheyrentefaeiSwitch.on {
            gheyrentefaeiParam = true
        }
        else
        {
            gheyrentefaeiParam = false
        }
    }
    @IBAction func payamnoorSwitchChange(sender: UISwitch) {
        if payamnoorSwitch.on {
            payamnoorParam = true
        }
        else
        {
            payamnoorParam = false
        }
    }
    @IBAction func majaziSwitchChange(sender: UISwitch) {
        if majaziSwitch.on {
            majaziParam = true
        }
        else
        {
            majaziParam = false
        }
    }
    
    
    var gpa4: String!
    var gradyear4: String!
    var bsmajor4: String!
    var englishSkill4: String!
    var conceptSkill4: String!
    var analyticSkill4: String!
    var mathSkill4: String!
    var shanbeHours4: Int = 0
    var yekshanbeHours4: Int = 0
    var doshanbeHours4: Int = 0
    var seshanbeHours4: Int = 0
    var charshanbeHours4: Int = 0
    var panjshanbeHours4: Int = 0
    var jomeHours4: Int = 0
    
    @IBAction func sendButton(sender: AnyObject) {

        print(bsmajor4)
        print(gpa4)
        print(gradyear4)
        print(englishSkill4)
        print(conceptSkill4)
        print(analyticSkill4)
        print(mathSkill4)
        print(shanbeHours4)
        print(yekshanbeHours4)
        print(doshanbeHours4)
        print(seshanbeHours4)
        print(charshanbeHours4)
        print(panjshanbeHours4)
        print(jomeHours4)
        print(concValue!)
        print(provValue!)
        print(roozaneParam)
        print(shabaneParam)
        print(gheyrentefaeiParam)
        print(payamnoorParam)
        print(majaziParam)
        
    }
    

    
    
    
    @IBOutlet weak var goalConcField: UITextField!
    @IBOutlet weak var goalProvinceField: UITextField!
    
    var valuePickerDataSource = []
    var valuePickerDataSource2 = []
    let concentrationsData = ["مالی","بازرگانی","صنعتی"]
    let sanatiData = ["تهران","کرمان"]
    let maaliData = ["مازندران","البرز","قزوین"]
    let bazarganiData = ["همدان","خراسان","فارس","بوشهر"]
    
//    let x: Int = 1
    var concValue: String! = "خالی"
    var provValue: String! = "خالی"

    

//    var x: String!

//    @IBOutlet weak var azadSwitch: UISwitch!
//    @IBAction func azadSwitchChanged(sender: UISwitch) {
////        if azadSwitch.on{
////            print("Switch is on")
////        }
////        else
////        {
////            print("switch is off")
////        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valuePickerDataSource = concentrationsData

        
        
//        if (x==1) {
//            valuePickerDataSource = concentrationsData
//        }
//        else
//        {
//            valuePickerDataSource = sanatiData
//        }

        
        
    // value pickers
        // 1
        let myPickerView = UIPickerView(frame: CGRectMake(0, 200, view.frame.width, 150))
       
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myPickerView.tag = 1
        goalConcField.inputView = myPickerView
        myPickerView.backgroundColor = UIColor(red: 166/255.0, green: 202/255.0, blue: 255/255.0, alpha: 1)
        myPickerView.showsSelectionIndicator = true

        // 2
        let myPickerView2 = UIPickerView(frame: CGRectMake(0, 200, view.frame.width, 150))
        
        myPickerView2.delegate = self
        myPickerView2.dataSource = self
        myPickerView2.tag = 2
        goalProvinceField.inputView = myPickerView2
        myPickerView2.backgroundColor = UIColor(red: 156/255.0, green: 255/255.0, blue: 246/255.0, alpha: 1)
        myPickerView2.showsSelectionIndicator = true
        
        
        
        
        
        
        
        
        // in order for the switch to talk with a variable
//        azadSwitch.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
        
        // Custom back Button
        let backBtn : UIBarButtonItem = UIBarButtonItem(title:"زمان آزاد مطالعه"+" "+">", style: UIBarButtonItemStyle.Plain, target:self, action: "popToPrevious")
        backBtn.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "IRANSans", size: 15)!], forState: UIControlState.Normal)
        self.navigationItem.leftBarButtonItem = backBtn
        
        
//        self.reloadInputViews()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
    //custom function to load previous view controller
    func popToPrevious(){
        let switchViewController = self.navigationController?.viewControllers[2] as! freeTimeViewController
        self.navigationController!.popToViewController(switchViewController, animated: true)
        print("back")
    }

//    func stateChanged(switchState: UISwitch) {
//        if switchState.on {
//            x = "on"
//        } else {
//            x = "off"
//        }
//        print(x!)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    //picker view
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {


        let pickerLabel = UILabel()
        var titleData: String!
       
        if (pickerView.tag == 1) {
            
            titleData = valuePickerDataSource[row] as! String
        }
        else
        {
            
            titleData = valuePickerDataSource2[row] as! String
        }
      
        let myTitle = NSAttributedString(string: titleData as String , attributes: [NSFontAttributeName:UIFont(name: "IRANSans", size: 15.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
        pickerLabel.attributedText = myTitle
        pickerLabel.textAlignment = .Center
        //        self.view.backgroundColor = UIColor.grayColor()
        //        bsgpatext.backgroundColor = UIColor.grayColor()
        //        bsmajortext.backgroundColor = UIColor.grayColor()
        //        bsgradyeartext.backgroundColor = UIColor.grayColor()
        return pickerLabel
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {  //delegate method
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        goalConcField.userInteractionEnabled = false

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerView.reloadInputViews()
        if pickerView.tag == 1
        {
            return valuePickerDataSource.count
        }
        else
        {
            return valuePickerDataSource2.count
        }

    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       pickerView.reloadAllComponents()
        pickerView.reloadInputViews()
        
        if pickerView.tag == 1
        {
            return valuePickerDataSource[row] as? String
        }
        else
        {
            return valuePickerDataSource2[row] as? String
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (pickerView.tag == 1) {
            goalProvinceField.text = ""
//            pickerView.reloadAllComponents()
            goalConcField.text = valuePickerDataSource[row] as? String
            concValue = valuePickerDataSource[row] as? String
//            print(concValue!)
            //pickerView.userInteractionEnabled = false
            goalConcField.backgroundColor = UIColor(red: (65/255.0), green: (230/255.0), blue: (57/255.0), alpha: 0.8)
            if (concValue == "صنعتی") {
                valuePickerDataSource2 = sanatiData
            }
            
            if (concValue == "مالی") {
                valuePickerDataSource2 = maaliData
            }
            
            if (concValue == "بازرگانی") {
                
                valuePickerDataSource2 = bazarganiData
            }

        }
            
            
        else
            {
                goalProvinceField.text = valuePickerDataSource2[row] as? String
                goalConcField.userInteractionEnabled = false
                goalProvinceField.backgroundColor = UIColor(red: (65/255.0), green: (230/255.0), blue: (57/255.0), alpha: 0.8)
                provValue = valuePickerDataSource2[row] as? String

            }
        
        
//        if (valuePickerDataSource != []) {
//            if goalConcField.text == "مالی" {
//                valuePickerDataSource = maaliData
//            }
//            if goalConcField.text == "صنعتی" {
//                valuePickerDataSource = sanatiData
//            }
//            if goalConcField.text == "بازرگانی" {
//                valuePickerDataSource = bazarganiData
//            }
       //}
        
        //bsmajortext.userInteractionEnabled = false
        // with the next line, you can save the real thing your user wanted to choose, not the kossher they later added on
//        print(valuePickerDataSource[row])
    }
    

   
    
    
    
    
    
    
    
    
    
    
}
