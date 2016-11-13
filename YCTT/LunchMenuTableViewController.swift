//
//  LunchMenuTableViewController.swift
//  YCTT
//
//  Created by 수현 on 10/6/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import Parse
import ParseUI

class LunchMenuTableViewController: UITableViewController {
    var lunchMenu:[LunchMenu] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.title = "LUNCH MENU"
                
        let acl = PFACL()
        acl.getPublicReadAccess = true
        acl.getPublicWriteAccess = false
        PFACL.setDefault(acl, withAccessForCurrentUser: true)
        
        let lunchMenuQuery = PFQuery(className: "LunchMenu")
        
        lunchMenuQuery.findObjectsInBackground {(result: [PFObject]?, error: NSError?) -> Void in
            for object in result! {
                self.lunchMenu.append(object as! LunchMenu)
            }
            
            self.lunchMenu.sort(by: { $0.date!.compare($1.date!) == ComparisonResult.orderedAscending})
            
            self.tableView.reloadData()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return lunchMenu.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return DateHelper.stringFromDate(lunchMenu[section].date!)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lunchMenuTableViewCell", for: indexPath) as! LunchMenuTableViewCell
        
        cell.grillLabel.text = lunchMenu[indexPath.section].menus![0]
        cell.friedRiceLabel.text = lunchMenu[indexPath.section].menus![1]
        cell.chineseLabel.text = lunchMenu[indexPath.section].menus![2]
        cell.carvingLabel.text = lunchMenu[indexPath.section].menus![3]
        cell.italianLabel.text = lunchMenu[indexPath.section].menus![4]
        cell.asianLabel.text = lunchMenu[indexPath.section].menus![5]
        cell.soupLabel.text = lunchMenu[indexPath.section].menus![6]
        
        return cell
    }
}
