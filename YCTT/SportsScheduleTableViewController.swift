//
//  SportsScheduleTableViewController.swift
//  YCTT
//
//  Created by 수현 on 2/10/17.
//  Copyright © 2017 YCIS-PX. All rights reserved.
//

import Foundation
import UIKit
import Parse
import ParseUI

class SportsScheduleTableViewController: UITableViewController {
    var sports:[Sports] = []
    var basketballSports:[Sports] = []
    var soccerSports:[Sports] = []
    var volleyballSports:[Sports] = []
    
    var arraysState = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.title = "SPORTS SCHEDULE"
        
        checkArraysState()
        
        let acl = PFACL()
        acl.getPublicReadAccess = true
        acl.getPublicWriteAccess = false
        PFACL.setDefault(acl, withAccessForCurrentUser: true)
        
        // All PFObjects in Sports class on Parse is queried to sportsQuery
        let sportsQuery = PFQuery(className: "Sports")
        
        sportsQuery.findObjectsInBackground {(result: [PFObject]?, error: Error?) -> Void in
            for object in result! {
                // Add all objects to 'sports' array while force csting PFObjects as Sports objects
                self.sports.append(object as! Sports)
            }
            
            for item in self.sports {
                // B for Basketball
                if item.sportType == "B" {
                    self.basketballSports.append(item)
                // S for Soccer
                } else if item.sportType == "S" {
                    self.soccerSports.append(item)
                // V for Volleyball
                } else if item.sportType == "V" {
                    self.volleyballSports.append(item)
                }
            }
            
            self.basketballSports.sort(by: { $0.date!.compare($1.date!) == ComparisonResult.orderedAscending})
            self.soccerSports.sort(by: { $0.date!.compare($1.date!) == ComparisonResult.orderedAscending})
            self.volleyballSports.sort(by: { $0.date!.compare($1.date!) == ComparisonResult.orderedAscending})
            
            self.checkArraysState()
            
            self.tableView.reloadData()
        }

    }
    
    func checkArraysState () {
        if basketballSports.count != 0 && soccerSports.count != 0 && volleyballSports.count != 0 {
            arraysState = "BSV"
        } else if basketballSports.count != 0 && soccerSports.count != 0 || basketballSports.count != 0 && volleyballSports.count != 0 || soccerSports.count != 0 && volleyballSports.count != 0 {
            if basketballSports.count != 0 && soccerSports.count != 0 {
                arraysState = "BS"
            } else if basketballSports.count != 0 && volleyballSports.count != 0 {
                arraysState = "BV"
            } else {
                arraysState = "SV"
            }
        } else if basketballSports.count != 0 || soccerSports.count != 0 || volleyballSports.count != 0 {
            if basketballSports.count != 0 {
                arraysState = "B"
            } else if soccerSports.count != 0 {
                arraysState = "S"
            } else {
                arraysState = "V"
            }
        } else {
            arraysState = "N"
        }
    }
    
    override func numberOfSections(in tabeView: UITableView) -> Int {
        if arraysState == "BSV" {
            return 3
        } else if arraysState == "BS" || arraysState == "BV" || arraysState == "SV" {
            return 2
        } else {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // arraysState for different possible combinations of sportsTypes
        // BSV for all Basketball, Soccer, and Volleyball present
        if arraysState == "BSV" {
            if section == 0 {
                return "Basketball"
            } else if section == 1 {
                return "Soccer"
            } else {
                return "Volleyball"
            }
        // BS or BV or SV for any two combination of sportsTypes
        } else if arraysState == "BS" || arraysState == "BV" || arraysState == "SV" {
            if arraysState == "BS" {
                if section == 0 {
                    return "Basketball"
                } else {
                    return "Soccer"
                }
            } else if arraysState == "BV" {
                if section == 0 {
                    return "Basketball"
                } else {
                    return "Volleyball"
                }
            } else {
                if section == 0 {
                    return "Soccer"
                } else {
                    return "Volleyball"
                }
            }
        } else if arraysState == "B" || arraysState == "S" || arraysState == "V" {
            if arraysState == "B" {
                return "Basketball"
            } else if arraysState == "S" {
                return "Soccer"
            } else {
                return "Volleyball"
            }
        } else {
            return "No Schedule"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if arraysState == "BSV" {
            if section == 0 {
                return basketballSports.count
            } else if section == 1 {
                return soccerSports.count
            } else {
                return volleyballSports.count
            }
        } else if arraysState == "BS" || arraysState == "BV" || arraysState == "SV" {
            if arraysState == "BS" {
                if section == 0 {
                    return basketballSports.count
                } else {
                    return soccerSports.count
                }
            } else if arraysState == "BV" {
                if section == 0 {
                    return basketballSports.count
                } else {
                    return volleyballSports.count
                }
            } else {
                if section == 0 {
                    return soccerSports.count
                } else {
                    return volleyballSports.count
                }
            }
        } else if arraysState == "B" || arraysState == "S" || arraysState == "V" {
            if arraysState == "B" {
                return basketballSports.count
            } else if arraysState == "S" {
                return soccerSports.count
            } else {
                return volleyballSports.count
            }
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sportsScheduleTableViewCell", for: indexPath) as! SportsScheduleTableViewCell
        
        if arraysState == "BSV" {
            if indexPath.section == 0 {
                cell.opponentLabel.text = basketballSports[indexPath.row].opponent
                cell.dateLabel.text = DateHelper.stringFromDate(basketballSports[indexPath.row].date!)
            } else if indexPath.section == 1 {
                cell.opponentLabel.text = soccerSports[indexPath.row].opponent
                cell.dateLabel.text = DateHelper.stringFromDate(soccerSports[indexPath.row].date!)
            } else {
                cell.opponentLabel.text = volleyballSports[indexPath.row].opponent
                cell.dateLabel.text = DateHelper.stringFromDate(volleyballSports[indexPath.row].date!)
            }
        } else if arraysState == "BS" || arraysState == "BV" || arraysState == "SV" {
            if arraysState == "BS" {
                if indexPath.section == 0 {
                    cell.opponentLabel.text = basketballSports[indexPath.row].opponent
                    cell.dateLabel.text = DateHelper.stringFromDate(basketballSports[indexPath.row].date!)
                } else {
                    cell.opponentLabel.text = soccerSports[indexPath.row].opponent
                    cell.dateLabel.text = DateHelper.stringFromDate(soccerSports[indexPath.row].date!)
                }
            } else if arraysState == "BV" {
                if indexPath.section == 0 {
                    cell.opponentLabel.text = basketballSports[indexPath.row].opponent
                    cell.dateLabel.text = DateHelper.stringFromDate(basketballSports[indexPath.row].date!)
                } else {
                    cell.opponentLabel.text = volleyballSports[indexPath.row].opponent
                    cell.dateLabel.text = DateHelper.stringFromDate(volleyballSports[indexPath.row].date!)
                }
            } else {
                if indexPath.section == 0 {
                    cell.opponentLabel.text = soccerSports[indexPath.row].opponent
                    cell.dateLabel.text = DateHelper.stringFromDate(soccerSports[indexPath.row].date!)
                } else {
                    cell.opponentLabel.text = volleyballSports[indexPath.row].opponent
                    cell.dateLabel.text = DateHelper.stringFromDate(volleyballSports[indexPath.row].date!)
                }
            }
        } else if arraysState == "B" || arraysState == "S" || arraysState == "V" {
            if arraysState == "B" {
                cell.opponentLabel.text = basketballSports[indexPath.row].opponent
                cell.dateLabel.text = DateHelper.stringFromDate(basketballSports[indexPath.row].date!)
            } else if arraysState == "S" {
                cell.opponentLabel.text = soccerSports[indexPath.row].opponent
                cell.dateLabel.text = DateHelper.stringFromDate(soccerSports[indexPath.row].date!)
            } else {
                cell.opponentLabel.text = volleyballSports[indexPath.row].opponent
                cell.dateLabel.text = DateHelper.stringFromDate(volleyballSports[indexPath.row].date!)
            }
        } else {
            cell.opponentLabel.text = ""
            cell.dateLabel.text = ""
        }
        
        return cell
    }
}
