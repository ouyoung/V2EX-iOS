//
//  SideMenuController.swift
//  V2EX
//
//  Created by WildCat on 7/14/14.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit
import RESideMenu

class SideMenuController : UIViewController, UITableViewDelegate, UITableViewDataSource, RESideMenuDelegate {
    let tableView = UITableView()
//    var selfUserController:UIViewController?
    
    override func viewDidLoad() {
//        self.navigationItem.leftBarButtonItem.image
        
        super.viewDidLoad()
        
        tableView.frame = CGRectMake(0, (self.view.frame.size.height - 54 * 5) / 2.0, self.view.frame.size.width, 54 * 5)
        tableView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleBottomMargin | UIViewAutoresizing.FlexibleWidth
        tableView.delegate = self
        tableView.dataSource = self
        tableView.opaque = false
        tableView.backgroundColor = UIColor.clearColor()
        tableView.backgroundView = nil
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        tableView.bounces = false
        tableView.scrollsToTop = false
        
        self.view.backgroundColor = UIColor.clearColor()
        
        self.view.addSubview(tableView)
        
//        selfUserController = self.storyboard.instantiateViewControllerWithIdentifier("selfUserController") as? UIViewController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // UITableView Delegate
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.sideMenuViewController.setContentViewController(UINavigationController(rootViewController: self.storyboard.instantiateViewControllerWithIdentifier("selfUserController") as UIViewController), animated: true)
//            self.sideMenuViewController.setContentViewController(UINavigationController(rootViewController:selfUserController), animated: true)
            self.sideMenuViewController.hideMenuViewController()
        default:
            break
        }
    }
    
    // UITableView Datasource
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 54
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int  {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cellIdentifier = "Cell";
        
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell;
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
            cell!.backgroundColor = UIColor.clearColor()
            cell!.textLabel.font = UIFont(name: "HelveticaNeue", size: 21)
            cell!.textLabel.textColor = UIColor.whiteColor()
            cell!.textLabel.highlightedTextColor = UIColor.lightGrayColor()
            cell!.selectedBackgroundView = UIView()
        }
        
        let titles = ["UserProfile"];
        let images = ["IconProfile"];
        
        cell!.textLabel.text = titles[indexPath.row]
        cell!.imageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    
}