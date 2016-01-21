//
//  IXXTableVC.swift
//  SwiftDelegate&Notifacation
//
//  Created by apple on 16/1/21.
//  Copyright © 2016年 www.ixxcome123.com. All rights reserved.
//

import UIKit

protocol IXXTableVCDelegate {
    func addTitle(title: String)
}

class IXXTableVC: UITableViewController {

    var delegate:IXXTableVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        }
        
        cell?.textLabel?.text = (indexPath.row).description
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.delegate?.addTitle((indexPath.row) .description)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
