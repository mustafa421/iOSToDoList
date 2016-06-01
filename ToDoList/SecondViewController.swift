//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Mustafa Abdelhamid on 5/30/16.
//  Copyright © 2016 Mustafa Abdelhamid. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var addLabel: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func addButton(sender: AnyObject) {
        if (addLabel.text == "") {
            resultLabel.text = "Please enter a value";
            return;
        }
        toDoItems.append(addLabel.text!);
        addLabel.text = "";
        NSUserDefaults.standardUserDefaults().setObject(toDoItems, forKey: "toDoItems");    //Updates array in memory
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);     //Closes keyboard after tapping anywhere on screen
    }
    
    func textFieldShouldReturn(textfield: UITextField!) -> Bool {
        addLabel.resignFirstResponder();
        return true;
    }
    

}

