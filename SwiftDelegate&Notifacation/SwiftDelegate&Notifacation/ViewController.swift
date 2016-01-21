//
//  ViewController.swift
//  SwiftDelegate&Notifacation
//
//  Created by apple on 16/1/21.
//  Copyright © 2016年 www.ixxcome123.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "receive:", name: "cellClick", object: nil)
        
    }
    
    func receive(notification: NSNotification) {
        self.btn.setTitle(notification.userInfo!["cellIndex"]!.description, forState: UIControlState.Normal)
        if (((notification.userInfo!["cellIndex"]!.description as NSString).integerValue)%2 == 0) {
            self.view.backgroundColor = UIColor.redColor()
        }else {
            self.view.backgroundColor = UIColor.purpleColor()
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    @IBAction func btnClick(sender: UIButton) {
        let VC = IXXTableVC()
        
       
        
        self.presentViewController(VC, animated: true, completion: nil)
    }

    


}

