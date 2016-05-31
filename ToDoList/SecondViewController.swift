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
    
    @IBAction func addButton(sender: AnyObject) {
        toDoItems.append(addLabel.text!);
        addLabel.text = "";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

