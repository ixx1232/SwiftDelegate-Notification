//
//  ViewController.swift
//  SwiftDelegate&Notifacation
//
//  Created by apple on 16/1/21.
//  Copyright © 2016年 www.ixxcome123.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, IXXTableVCDelegate {
    @IBOutlet weak var btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnClick(sender: UIButton) {
        let VC = IXXTableVC()
        
        VC.delegate = self
        
        self.presentViewController(VC, animated: true, completion: nil)
    }

    func addTitle(title: String) {
        self.btn.setTitle(title, forState: UIControlState.Normal)
        
        if (((title as NSString).integerValue)%2 == 0) {
            self.view.backgroundColor = UIColor.redColor()
        }else {
            self.view.backgroundColor = UIColor.greenColor()
        }
    }


}

