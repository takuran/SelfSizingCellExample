//
//  TableViewController.swift
//  SelfSizingCellExample
//
//  Created by Naoyuki Takura on 2014/09/15.
//  Copyright (c) 2014年 Naoyuki Takura. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UITableViewController {
    
    override func viewDidLoad() {
        //
        super.viewDidLoad()
        
        //initialize
        tableView.estimatedRowHeight = 60
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    //MARK: implementation of uitableviewcontroller datasources
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as CustomCell
        
        //dummy text
        var dummyString = "01234567890"
        for i in 0...indexPath.row {
            dummyString += dummyString
        }
        //set text
        cell.customLabel.text = "index : \(indexPath.row), dummyString : \(dummyString)"

        return cell
    }
    
    
    
}
