//
//  V2EXMenuViewController.swift
//  V2EX
//
//  Created by WildCat on 27/07/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

class V2EXMenuViewController : UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorColor = UIColor(red: 150/255.0, green: 161/255.0, blue: 177/255.0, alpha: 1.0)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.opaque = false
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.tableHeaderView = {
            () -> UIView in
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 184.0))
            let imageView = UIImageView(frame: CGRect(x: 0, y: 40, width: 100, height: 100))
            imageView.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin
            imageView.image = UIImage(named: "empty_avatar")
            imageView.layer.masksToBounds = true
            imageView.layer.cornerRadius = 50.0
            imageView.layer.borderColor = UIColor.whiteColor().CGColor
            imageView.layer.borderWidth = 3.0
            imageView.layer.rasterizationScale = UIScreen.mainScreen().scale
            imageView.layer.shouldRasterize = true
            imageView.clipsToBounds = true
            
            let label = UILabel(frame: CGRect(x: 0, y: 150, width: 0, height: 24))
            label.text = "Roman Efimov"
            label.font = UIFont(name: "HelveticaNeue", size: 21)
            label.backgroundColor = UIColor.clearColor()
            label.textColor = UIColor(red: 62/255.0, green: 68/255.0, blue: 75/255.0, alpha: 1.0)
            label.sizeToFit()
            label.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin
            
            view.addSubview(imageView)
            view.addSubview(label)
            return view
        }()
    }
    
    override func tableView(tableView: UITableView!, willDisplayCell cell: UITableViewCell!, forRowAtIndexPath indexPath: NSIndexPath!) {
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel.textColor = UIColor(red: 62/255.0, green: 68/255.0, blue: 75/255.0, alpha: 1.0)
    }
    
    override func tableView(tableView: UITableView!, viewForHeaderInSection section: Int) -> UIView! {
        if section == 0 {
            return nil
        }
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 34))
        view.backgroundColor = UIColor(red: 167/255.0, green: 167/255.0, blue: 167/255.0, alpha: 1.0)
        
        let label = UILabel(frame: CGRect(x: 10, y: 8, width: 0, height: 0))
        label.text = "Friends Online"
        label.font = UIFont.systemFontOfSize(15.0)
        label.backgroundColor = UIColor.clearColor()
        label.sizeToFit()
        view.addSubview(label)
        
        return view
    }
    
    override func tableView(tableView: UITableView!, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        
        return 34
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let bunlde = NSBundle.mainBundle()
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: bunlde)
        
        let navController:UINavigationController = mainStoryBoard.instantiateViewControllerWithIdentifier("navController") as UINavigationController
        
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let selfUserController:V2EXMainViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("selfUserController") as V2EXMainViewController
                navController.viewControllers = [selfUserController]
            }
        } else {
            
        }
        
        self.frostedViewController.contentViewController = navController;
        self.frostedViewController.hideMenuViewController()
    }
    
    // UITableView Datasource
    
    override func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 54
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cellIdentifier = "Cell"
        
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
        }
        
        if indexPath.section == 0 {
            let titles = ["Home", "Profile", "Chats"]
            cell!.textLabel.text = titles[indexPath.row]
        } else {
            let titles = ["John Appleseed", "John Doe", "Test User"]
            cell!.textLabel.text = titles[indexPath.row]
        }
        
        return cell
    }
    
}
