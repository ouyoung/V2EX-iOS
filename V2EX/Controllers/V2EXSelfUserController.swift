//
//  V2EXSelfUserController.swift
//  V2EX
//
//  Created by WildCat on 7/14/14.
//  Copyright (c) 2014 WildCat. All rights reserved.1
//

import UIKit

class V2EXSelfUserController : V2EXMainViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = NSLocalizedString("MY_PROFILE",comment: "")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
            
    }
    
//    @IBAction override func showSideMenu(sender: AnyObject) {
//        // Dismiss keyboard (optional)
//        //
//        self.view.endEditing(true)
//        self.frostedViewController.view.endEditing(true)
//        
//        // Present the view controller
//        //
//        self.frostedViewController.presentMenuViewController()
//    }
   
    
}
