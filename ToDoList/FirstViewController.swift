//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Mustafa Abdelhamid on 5/30/16.
//  Copyright © 2016 Mustafa Abdelhamid. All rights reserved.
//

import UIKit

var toDoItems:[String] = [];     // Is updated by "Add button" in Second View Controller
                                    // Add pull to refresh feature and fading added succesfully message
                                    // Add title, customize UI color and featuresf 
                                    // Add direct editing into cells

class FirstViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
        cell.textLabel?.text = toDoItems[indexPath.row];
        return cell;
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true;    //Allows to swipe to delete + editing
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            toDoItems.removeAtIndex(indexPath.row);
            NSUserDefaults.standardUserDefaults().setObject(toDoItems, forKey: "toDoItems");    //Updates array in memory
            table.reloadData();
        }
//        if (editingStyle == UITableViewCellEditingStyle.Insert) {
//            //Handle addition
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad();
        if (NSUserDefaults.standardUserDefaults().objectForKey("toDoItems") != nil) {       //Checks if there is a save file in storage
          toDoItems = NSUserDefaults.standardUserDefaults().objectForKey("toDoItems") as! [String]; //If there is, set array to loaded array
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        table.reloadData();
    }


}

