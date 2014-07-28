//
//  V2EXRootViewController.swift
//  V2EX
//
//  Created by WildCat on 27/07/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit
import REFrostedViewController

class V2EXRootViewController : REFrostedViewController {
    
    override func awakeFromNib() {
        self.contentViewController = self.storyboard.instantiateViewControllerWithIdentifier("navController") as UIViewController
        self.menuViewController = V2EXMenuViewController()
       
    }
}
