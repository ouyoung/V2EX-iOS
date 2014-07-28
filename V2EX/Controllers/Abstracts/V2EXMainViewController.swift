//
//  V2EXMainViewController.swift
//  V2EX
//
//  Created by WildCat on 27/07/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

class V2EXMainViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set left button
        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "IconMenu"), style: UIBarButtonItemStyle.Done, target: self, action: "showSideMenu:")
      
        navigationItem.leftBarButtonItem = leftBarButtonItem
        
        // Handle gesture
        self.view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "panGestureRecognized:"))
    }
    
    func showSideMenu(sender: AnyObject) {
        // Dismiss keyboard (optional)
        //
        self.view.endEditing(true)
        self.frostedViewController.view.endEditing(true)
        
        // Present the view controller
        //
        self.frostedViewController.presentMenuViewController()
    }
    
    func panGestureRecognized(sender: UIPanGestureRecognizer) {
        // Dismiss keyboard (optional)
        //
        self.view.endEditing(true)
        self.frostedViewController.view.endEditing(true)
        
        // Present the view controller
        //
        self.frostedViewController.presentMenuViewController()
    }
    
}
