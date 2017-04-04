//
//  TimeTableTableViewController.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//
import UIKit

class TimeTableTableViewController: UITableViewController {

    var userClass: String?
    var currentDay: String?
    
    var subjectsArray: [String] = []
    var subjectsArray2: [Subject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        currentDay = DayCheckHelper.currentDay
        
        self.title = "DAY " + currentDay!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeTableTableViewCell", for: indexPath) as! TimeTableTableViewCell
        
        cell.timeLabel.text = ArrayFile.timeArray[indexPath.row]
        
        if userClass == "7A" || userClass == "7B" || userClass == "7C" || userClass == "7D" || userClass == "7E" || userClass == "8A" || userClass == "8B" || userClass == "8C" || userClass == "8D" || userClass == "9A" || userClass == "9B" || userClass == "9C" || userClass == "9D" || userClass == "10A" || userClass == "10B" || userClass == "10C" || userClass == "10D" || userClass == "11A" || userClass == "11B" || userClass == "11C" || userClass == "11D" {
            cell.subjectLabel.text = subjectsArray2[indexPath.row].name.uppercased()
            cell.roomLabel.text = subjectsArray2[indexPath.row].roomNumber.uppercased()
        } else if userClass == "12A" || userClass == "12B" || userClass == "12C" || userClass == "12D" || userClass == "13A" || userClass == "13B" || userClass == "13C" || userClass == "13D" {
            cell.subjectLabel.text = subjectsArray[indexPath.row].uppercased()
            cell.roomLabel.text = ""
        }
        
        if UIScreen.main.bounds.height == 1024 {
            cell.timeLabel.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            cell.subjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            cell.roomLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
        } else if UIScreen.main.bounds.height == 1366 {
            cell.timeLabel.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            cell.subjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            cell.roomLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
        }
        
        return cell
    }
}
