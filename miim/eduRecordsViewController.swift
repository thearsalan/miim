//
//  eduRecordsViewController.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/24/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class eduRecordsViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var bsmajortext: UITextField!
    @IBOutlet weak var bsgradyeartext: UITextField!
    @IBOutlet weak var bsgpatext: UITextField!
   
   // @IBOutlet weak var invisbutton: UIButton!
   
 //   @IBOutlet weak var bspickerview: UIPickerView!
    
    var tempPickerValue: String!
    let pickerDataSource = ["مکانیک", "صنایع", "برق", "کامپیوتر"]
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bsgradyeartext.delegate = self
        bsgpatext.delegate = self
        
//        var gpa = bsgpatext.text
        
        let newPickerView = UIPickerView(frame: CGRectMake(0, 200, view.frame.width, 300))
        
        newPickerView.delegate = self
        newPickerView.dataSource = self
        
        bsmajortext.inputView = newPickerView
 //     bsmajortext.userInteractionEnabled = false
        newPickerView.backgroundColor = .whiteColor()
        newPickerView.showsSelectionIndicator = true
        //self.view.backgroundColor = UIColor.redColor()
        //= UIColor.redColor()
        //        let toolBar = UIToolbar()
//        toolBar.barStyle = UIBarStyle.Default
//        toolBar.translucent = true
//        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
//        toolBar.sizeToFit()
//        
//        let doneButton = UIBarButtonItem(title: "ثبت", style: UIBarButtonItemStyle.Plain, target: self, action: "donePressed")
//      
//        toolBar.setItems([doneButton], animated: false)
//        toolBar.userInteractionEnabled = true
//        
//        bsmajortext.inputAccessoryView = toolBar
        
      
        
        
        
        
//        let toolBar = UIToolbar(frame: CGRectMake(0, self.view.frame.size.height/6, self.view.frame.size.width, 40.0))
//        
//        toolBar.layer.position = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height-20.0)
//        
//        toolBar.barStyle = UIBarStyle.Default
//        toolBar.sizeToFit()
//        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
//        toolBar.backgroundColor = UIColor.blackColor()
//        
//        
//        let defaultButton = UIBarButtonItem(title: "Default", style: UIBarButtonItemStyle.Plain, target: self, action: "tappedToolBarBtn:")
//        
       // let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: "donePressed:")
      //  let doneButton = UIBarButtonItem(title: "انتخاب", style: UIBarButtonItemStyle.Done, target: self, action: "donePressed")
//       // let doneButton = UIBarButtonItem(title: "tamum", style: .Plain, target: self, action: "donePressed")
//        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: self, action: nil)
//        
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width / 3, height: self.view.frame.size.height))
        
//        label.font = UIFont(name: "IRANSans", size: 12)
//        
//        label.backgroundColor = UIColor.clearColor()
//        
//        label.textColor = UIColor.whiteColor()
//        
//        label.text = "یک رشته را انتخاب کنید"
//        
//        label.textAlignment = NSTextAlignment.Center
//        
//        let textBtn = UIBarButtonItem(customView: label)
//        
//        toolBar.setItems([defaultButton,flexSpace,textBtn,flexSpace,doneButton], animated: true)
//        
//        bsmajortext.inputAccessoryView = toolBar
    
//        print(gpa?.startIndex)
        
        //checking input validity
//        if (gpa?.startIndex == "1") {
//            
//        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1to2(sender: AnyObject) {
        
        performSegueWithIdentifier("1to2segue", sender: self)
     
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "1to2segue") {
            
            let UI1 = segue.destinationViewController as! eduSkillsViewController
            
                let gpa1 = bsgpatext.text! as String
                UI1.gpa2 = gpa1

                let bsmajor1 = bsmajortext.text! as String
                UI1.bsmajor2 = bsmajor1

                let gradyear1 = bsgradyeartext.text! as String
                UI1.gradyear2 = gradyear1

            }
        }
        
    

    
    
    
//    func checkGPA(gpa: Double){
//        if gpa
//        let alertController = UIAlertController(title: "خطا", message:
//            "معدل را در قالب xx.xx وارد نمایید", preferredStyle: UIAlertControllerStyle.Alert)
//        alertController.addAction(UIAlertAction(title: "بسیار خب", style: UIAlertActionStyle.Default,handler: nil))
//        self.presentViewController(alertController, animated: true, completion: nil)
//    }
 
    //Formatting the UIpickerView
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = pickerDataSource[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "IRANSans", size: 15.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
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
//        self.view.backgroundColor = UIColor.whiteColor()
//        bsgpatext.backgroundColor = UIColor.whiteColor()
//        bsmajortext.backgroundColor = UIColor.whiteColor()
//        bsgradyeartext.backgroundColor = UIColor.whiteColor()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        bsmajortext.text = pickerDataSource[row]
        //bsmajortext.userInteractionEnabled = false
        // with the next line, you can save the real thing your user wanted to choose, not the kossher they later added on
        print(pickerDataSource[row])
    }

   
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool
    {
        let maxLength = 5
        let currentString: NSString = textField.text!
        let newString: NSString =
        currentString.stringByReplacingCharactersInRange(range, withString: string)
        return newString.length <= maxLength
    }
    

}
