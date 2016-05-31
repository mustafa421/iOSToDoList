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

    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        table.reloadData();
    }


}

