//
//  ViewController.swift
//  UITextFieldUtility
//
//  Created by Madhav Anadkat on 4/2/16.
//  Copyright © 2016 BrevitySoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func onTap(sender: MasterTextField) {
        
        let alertController = UIAlertController(title: "UITextField Tap Event", message:
            "Great :-) !", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
}


extension ViewController:UITextFieldDelegate{
   
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("UITextField.........>>>>>>>>>>>>")
        if textField.actionsForTarget(self, forControlEvent: UIControlEvents.TouchUpInside)?.count != 0{
            textField.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
        }
        return false
    }
}
