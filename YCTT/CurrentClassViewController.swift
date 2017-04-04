//
//  CurrentClassViewController.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import SystemConfiguration

class CurrentClassViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var currentSubjectLabel: UILabel!
    @IBOutlet weak var currentRoomLabel: UILabel!
    @IBOutlet weak var nextSubjectLabel: UILabel!
    @IBOutlet weak var nextRoomLabel: UILabel!
    @IBOutlet weak var currentClassLabel: UILabel!
    @IBOutlet weak var nextClassLabel: UILabel!
    
    @IBOutlet weak var examScheduleBtn: UIButton!
    
    @IBOutlet weak var currentClassSubjectDistance: NSLayoutConstraint!
    @IBOutlet weak var currentRoomNextClassDistance: NSLayoutConstraint!
    @IBOutlet weak var nextClassSubjectDistance: NSLayoutConstraint!
    
    let currentTime = Date()
    var currentDay: String?
    var dateString: String?
    var currentClassString: String?
    var nextClassString: String?
    
    var subjectsArray = [""]
    var subjectsArray2: [Subject] = []
    
    let user = RealmHelper.retrieveUsers()[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        examScheduleBtn.layer.cornerRadius = 5
        examScheduleBtn.isHidden = true
        
        currentDay = DayCheckHelper.currentDay
        
        welcomeLabel.text = user.name + " " + user.yearGroup
        
        ElectiveHelper.timeTableElectiveApplier(user.yearGroup)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm a"
        dateFormatter.amSymbol = "AM"
        dateFormatter.pmSymbol = "PM"
        
        dateString = dateFormatter.string(from: currentTime)
        
        let currentString = TimeCheckHelper.timeCheck(dateString!)
        print(currentString)
        
        if currentString != "not in school" {
            currentClassString = TimeCheckHelper.classCheck(currentString).uppercased()
        }
        
        // display current class
        if currentString != "not in school" {
            currentSubjectLabel.text = currentClassString
            currentRoomLabel.text = TimeCheckHelper.currentRoomCheck(currentString).uppercased()
        } else {
            currentSubjectLabel.text = "Not school time yet!"
            currentRoomLabel.text = ""
        }
        
        // display next class depending on situation
        if currentString != "02:41PM - 03:30PM" && currentString != "not in school"{
            nextClassString = TimeCheckHelper.nextClassCheck(currentString).uppercased()
            nextSubjectLabel.text = nextClassString
            nextRoomLabel.text = TimeCheckHelper.nextRoomCheck(currentString).uppercased()
        } else if currentString == "02:41PM - 03:30PM" {
            nextSubjectLabel.text = "School's over soon!"
            nextRoomLabel.text = ""
        } else {
            nextSubjectLabel.text = ""
            nextRoomLabel.text = ""
        }
        
        if user.yearGroup == "7A" {
            subjectsArray2 = ArrayFile.Y7AActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "7B" {
            subjectsArray2 = ArrayFile.Y7BActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "7C" {
            subjectsArray2 = ArrayFile.Y7CActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "7D" {
            subjectsArray2 = ArrayFile.Y7DActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "7E" {
            subjectsArray2 = ArrayFile.Y7EActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "8A" {
            subjectsArray2 = ArrayFile.Y8AActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "8B" {
            subjectsArray2 = ArrayFile.Y8BActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "8C" {
            subjectsArray2 = ArrayFile.Y8CActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "8D" {
            subjectsArray2 = ArrayFile.Y8DActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "9A" {
            subjectsArray2 = ArrayFile.Y9AActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "9B" {
            subjectsArray2 = ArrayFile.Y9BActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "9C" {
            subjectsArray2 = ArrayFile.Y9CActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "9D" {
            subjectsArray2 = ArrayFile.Y9DActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "10A" {
            subjectsArray2 = ArrayFile.Y10AActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "10B" {
            subjectsArray2 = ArrayFile.Y10BActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "10C" {
            subjectsArray2 = ArrayFile.Y10CActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "10D" {
            subjectsArray2 = ArrayFile.Y10DActual[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "11A" {
            subjectsArray2 = ArrayFile.Y11AActual[DayCheckHelper.dayToNumber(currentDay!)]
//            examScheduleBtn.isHidden = false
        } else if user.yearGroup == "11B" {
            subjectsArray2 = ArrayFile.Y11BActual[DayCheckHelper.dayToNumber(currentDay!)]
//            examScheduleBtn.isHidden = false
        } else if user.yearGroup == "11C" {
            subjectsArray2 = ArrayFile.Y11CActual[DayCheckHelper.dayToNumber(currentDay!)]
//            examScheduleBtn.isHidden = false
        } else if user.yearGroup == "11D" {
            subjectsArray2 = ArrayFile.Y11DActual[DayCheckHelper.dayToNumber(currentDay!)]
//            examScheduleBtn.isHidden = false
        }
        
        if user.yearGroup == "12A" || user.yearGroup == "12B" || user.yearGroup == "12C" || user.yearGroup == "12D" {
            subjectsArray = ArrayFile.Y12[DayCheckHelper.dayToNumber(currentDay!)]
        } else if user.yearGroup == "13A" || user.yearGroup == "13B" || user.yearGroup == "13C" || user.yearGroup == "13D" {
            subjectsArray = ArrayFile.Y13[DayCheckHelper.dayToNumber(currentDay!)]
            examScheduleBtn.isHidden = false
        }
                
        if UIScreen.main.bounds.height == 1024 {
            welcomeLabel.font = UIFont(name: "RobotoSlab-Regular", size: 50.0)
            currentClassLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            currentSubjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 60.0)
            currentRoomLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            nextClassLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            nextSubjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 60.0)
            nextRoomLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            currentClassSubjectDistance.constant = 20
            currentRoomNextClassDistance.constant = 100
            nextClassSubjectDistance.constant = 20
        } else if UIScreen.main.bounds.height == 1366 {
            welcomeLabel.font = UIFont(name: "RobotoSlab-Regular", size: 50.0)
            currentClassLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            currentSubjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 60.0)
            currentRoomLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            nextClassLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            nextSubjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 60.0)
            nextRoomLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            currentClassSubjectDistance.constant = 20
            currentRoomNextClassDistance.constant = 100
            nextClassSubjectDistance.constant = 20
        }
    }
    
    @IBAction func lunchMenuBtnPressed(_ sender: AnyObject) {
        if connectedToNetwork() == true {
            performSegue(withIdentifier: "lunchMenuTable", sender: nil)
        } else {
            let alertController = UIAlertController(title: "No Internet Connection", message: "Please try again with internet connection", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func teacherEmailBtnPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "staffEmailTable", sender: nil)
    }
    
    @IBAction func examScheduleBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "showExamSchedule", sender: nil)
    }
    
    @IBAction func showSportsScheduleBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "showSportsSchedule", sender: nil)
    }
    
    func connectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }) else {
            return false
        }
        
        var flags : SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        return (isReachable && !needsConnection)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "viewTimeTable" {
                // set timeTableTableViewController as the destination of this segue
                let timeTableTableViewController = segue.destination as! TimeTableTableViewController
                // set timeTableTableViewController's variables using this view controller's variables
                timeTableTableViewController.userClass = user.yearGroup
                timeTableTableViewController.subjectsArray = subjectsArray
                timeTableTableViewController.subjectsArray2 = subjectsArray2
            } else if identifier == "viewAllTimeTable" {
                let allTimeTableCollectionViewController = segue.destination as! AllTimeTableCollectionViewController
                allTimeTableCollectionViewController.subjectsArray = subjectsArray
                allTimeTableCollectionViewController.subjectsArray2 = subjectsArray2
            } else if identifier == "showExamSchedule" {
                let mockExamScheduleTableViewController = segue.destination as! MockExamScheduleTableViewController
                mockExamScheduleTableViewController.yearGroup = user.yearGroup
            }
        }
    }
}
