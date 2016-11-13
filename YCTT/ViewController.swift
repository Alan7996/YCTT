//
//  ViewController.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var dayPicker: UIPickerView!
    @IBOutlet weak var logOutBtn: UIButton!
    @IBOutlet weak var selectBtn: UIButton!
    @IBOutlet weak var editNameBtn: UIButton!
    @IBOutlet weak var selectedDayLabel: UILabel!
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var todayDayLabel: UILabel!
    @IBOutlet weak var selectDayLabel: UILabel!
    @IBOutlet weak var todayDayConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var pickerViewHeight: NSLayoutConstraint!
    @IBOutlet weak var selectedDayPickerViewDistanceHeight: NSLayoutConstraint!
    @IBOutlet weak var selectBtnHeight: NSLayoutConstraint!
    @IBOutlet weak var selectBtnDistanceConstraint: NSLayoutConstraint!
    @IBOutlet weak var logOutBottomDistance: NSLayoutConstraint!
    
    var userClass = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(red: 242.0/255.0, green: 129.0/255.0, blue: 55.0/255.0, alpha: 1.0)
        navigationController?.navigationBar.tintColor = UIColor.white
        
        selectBtn.layer.cornerRadius = 5
        
        dayPicker.delegate = self
        dayPicker.dataSource = self
        
        if UIScreen.main.bounds.height == 568 {
            title1Label.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            title2Label.font = UIFont(name: "RobotoSlab-Regular", size: 29.0)
            todayDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            selectDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            selectedDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            todayDayConstraintHeight.constant = 21
            pickerViewHeight.constant = 150
        } else if UIScreen.main.bounds.height == 667 {
            title1Label.font = UIFont(name: "RobotoSlab-Regular", size: 28.0)
            title2Label.font = UIFont(name: "RobotoSlab-Regular", size: 32.0)
            todayDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 22.0)
            selectDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 22.0)
            selectedDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 22.0)
            todayDayConstraintHeight.constant = 26
            pickerViewHeight.constant = 150
        } else if UIScreen.main.bounds.height == 736 {
            title1Label.font = UIFont(name: "RobotoSlab-Regular", size: 31.0)
            title2Label.font = UIFont(name: "RobotoSlab-Regular", size: 37.0)
            todayDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            selectDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            selectedDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            todayDayConstraintHeight.constant = 30
            pickerViewHeight.constant = 150
        } else if UIScreen.main.bounds.height == 1024 {
            title1Label.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            title2Label.font = UIFont(name: "RobotoSlab-Regular", size: 60.0)
            todayDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            selectDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            selectedDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            todayDayConstraintHeight.constant = 30
            pickerViewHeight.constant = 200
            selectedDayPickerViewDistanceHeight.constant = 40
            selectBtnHeight.constant = 100
            selectBtnDistanceConstraint.constant = 60
            selectBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            logOutBottomDistance.constant = 50
            logOutBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
        } else if UIScreen.main.bounds.height == 1366 {
            title1Label.font = UIFont(name: "RobotoSlab-Regular", size: 51.0)
            title2Label.font = UIFont(name: "RobotoSlab-Regular", size: 76.0)
            todayDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            selectDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            selectedDayLabel.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            todayDayConstraintHeight.constant = 50
            pickerViewHeight.constant = 200
            selectedDayPickerViewDistanceHeight.constant = 60
            selectBtnHeight.constant = 100
            selectBtnDistanceConstraint.constant = 80
            selectBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            logOutBottomDistance.constant = 50
            logOutBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
        }
    }

    override var shouldAutorotate : Bool {
        return false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ArrayFile.dayArray.count
    }

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label = view as! UILabel!
        if label == nil {
            label = UILabel()
        }
        if UIScreen.main.bounds.height == 568 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 15.0)
        } else if UIScreen.main.bounds.height == 667 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 17.0)
        } else if UIScreen.main.bounds.height == 736 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 22.0)
        } else if UIScreen.main.bounds.height == 1024 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
        } else if UIScreen.main.bounds.height == 1366 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 50.0)
        }
        label?.textColor = UIColor.white
        label?.text = ArrayFile.dayArray[row]
        label?.textAlignment = .center
        return label!
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        if UIScreen.main.bounds.height == 1024 || UIScreen.main.bounds.height == 1366 {
            return 55
        }
        return 25
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DayCheckHelper.changdeDate(ArrayFile.dayArray[row])
        selectedDayLabel.text = DayCheckHelper.currentDay
        print(DayCheckHelper.currentDay)
    }
    
    @IBAction func logOutBtnPressed(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Log Out", message: "This account will be permanently deleted", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            let result = RealmHelper.retrieveUsers()
            RealmHelper.deleteUser(result[0])
            
            let setUserInfoViewController = self.storyboard!.instantiateViewController(withIdentifier: "SetUserInfoViewController")
            let window = UIApplication.shared.windows[0]
            window.rootViewController! = setUserInfoViewController
            RealmHelper.addUser(User())
            
            ClassSetUpHelper.resetStringArrays()
        }))
            
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func editNameBtnPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "editNameSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "selectDay" {
                let subjects = RealmHelper.retrieveSubjects()
                let x = 0
                while x < subjects.count {
                    RealmHelper.deleteSubject(subjects[x])
                }
                ClassSetUpHelper.resetActualArrays()
                
                let result = RealmHelper.retrieveUsers()
                if result[0].yearGroup == "7A" {
                    ClassSetUpHelper.Y7ASetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "7B" {
                    ClassSetUpHelper.Y7BSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "7C" {
                    ClassSetUpHelper.Y7CSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "7D" {
                    ClassSetUpHelper.Y7DSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "7E" {
                    ClassSetUpHelper.Y7ESetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "8A" {
                    ClassSetUpHelper.Y8ASetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "8B" {
                    ClassSetUpHelper.Y8BSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "8C" {
                    ClassSetUpHelper.Y8CSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "8D" {
                    ClassSetUpHelper.Y8DSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "9A" {
                    ClassSetUpHelper.Y9ASetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "9B" {
                    ClassSetUpHelper.Y9BSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "9C" {
                    ClassSetUpHelper.Y9CSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "9D" {
                    ClassSetUpHelper.Y9DSetUp()
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "10A" {
                    ElectiveHelper.timeTableElectiveApplier("10A")
                    ClassSetUpHelper.Y10SetUp("10A")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "10B" {
                    ElectiveHelper.timeTableElectiveApplier("10B")
                    ClassSetUpHelper.Y10SetUp("10B")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "10C" {
                    ElectiveHelper.timeTableElectiveApplier("10C")
                    ClassSetUpHelper.Y10SetUp("10C")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "10D" {
                    ElectiveHelper.timeTableElectiveApplier("10D")
                    ClassSetUpHelper.Y10SetUp("10D")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "11A" {
                    ElectiveHelper.timeTableElectiveApplier("11A")
                    ClassSetUpHelper.Y11SetUp("11A")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "11B" {
                    ElectiveHelper.timeTableElectiveApplier("11B")
                    ClassSetUpHelper.Y11SetUp("11B")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "11C" {
                    ElectiveHelper.timeTableElectiveApplier("11C")
                    ClassSetUpHelper.Y11SetUp("11C")
                    ClassSetUpHelper.assignSubjectObject()
                } else if result[0].yearGroup == "11D" {
                    ElectiveHelper.timeTableElectiveApplier("11D")
                    ClassSetUpHelper.Y11SetUp("11D")
                    ClassSetUpHelper.assignSubjectObject()
                }
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any!) -> Bool {
        if identifier == "selectDay" {
            if DayCheckHelper.currentDay == "" {
                let alertController = UIAlertController(title: "No Day Selected", message: "Please Select Today's Day", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
                
                return false
            } else {
                return true
            }
        }
        // by default, transition
        return true
    }

}
