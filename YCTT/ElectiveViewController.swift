//
//  ElectiveViewController.swift
//  School Timetable
//
//  Created by 수현 on 8/29/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

class ElectiveViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var selectLabel: UILabel!
    @IBOutlet weak var E1Label: UILabel!
    @IBOutlet weak var E2Label: UILabel!
    @IBOutlet weak var E3Label: UILabel!
    @IBOutlet weak var secondLangLabel: UILabel!
    @IBOutlet weak var fourHLLabel: UILabel!
    @IBOutlet weak var saveBtn2: UIButton!
    @IBOutlet weak var elective1: UIPickerView!
    @IBOutlet weak var elective2: UIPickerView!
    @IBOutlet weak var elective3: UIPickerView!
    @IBOutlet weak var secondLanguage: UIPickerView!
    @IBOutlet weak var fourHLSwitch: UISwitch!
    @IBOutlet weak var saveBtnWidth: NSLayoutConstraint!
    @IBOutlet weak var saveBtnHeight: NSLayoutConstraint!
    
    var elective1Course = ""
    var elective2Course = ""
    var elective3Course = ""
    var secondLanguageCourse = "Chinese"
    
    var fourHLToggle = 0
    
    var currentUser: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveBtn2.layer.cornerRadius = 5
        
        elective1.delegate = self
        elective1.dataSource = self
        elective1.tag = 0
        elective2.delegate = self
        elective2.dataSource = self
        elective2.tag = 1
        elective3.delegate = self
        elective3.dataSource = self
        elective3.tag = 2
        secondLanguage.delegate = self
        secondLanguage.dataSource = self
        secondLanguage.tag = 3
        
        fourHLSwitch.setOn(false, animated: true)
        
        let result = RealmHelper.retrieveUsers()
        currentUser = result[0]
        
        if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
            elective1Course = "Biology H"
            elective2Course = "Art H"
            elective3Course = "Business Management H3"
        } else {
            elective1Course = "Art H (12b)"
            elective2Course = "Art H (12a)"
            elective3Course = "Business Management H3"
        }
        
        if UIScreen.main.bounds.height == 1024 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            E1Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            E2Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            E3Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            secondLangLabel.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            fourHLLabel.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            saveBtn2.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 80
            saveBtnHeight.constant = 55
        } else if UIScreen.main.bounds.height == 1366 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            E1Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            E2Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            E3Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            secondLangLabel.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            fourHLLabel.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            saveBtn2.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 100
            saveBtnHeight.constant = 60
        }
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
            if pickerView.tag == 0 {
                return ArrayFile.electiveArrayIB2Y12.count
            } else if pickerView.tag == 1 {
                return ArrayFile.electiveArrayIB4Y12.count
            } else if pickerView.tag == 2 {
                return ArrayFile.electiveArrayIB7Y12.count
            } else if pickerView.tag == 3 {
                return ArrayFile.languageElectiveIB.count
            } else {
                return ArrayFile.noElectiveArray.count
            }
        } else {
            if pickerView.tag == 0 {
                return ArrayFile.electiveArrayIB2Y13.count
            } else if pickerView.tag == 1 {
                return ArrayFile.electiveArrayIB4Y13.count
            } else if pickerView.tag == 2 {
                return ArrayFile.electiveArrayIB7Y13.count
            } else if pickerView.tag == 3 {
                return ArrayFile.languageElectiveIB.count
            } else {
                return ArrayFile.noElectiveArray.count
            }
        }
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
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 24.0)
        } else if UIScreen.main.bounds.height == 1366 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 27.0)
        }
        label?.textColor = UIColor.white
        if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
            if pickerView.tag == 0 {
                label?.text = ArrayFile.electiveArrayIB2Y12[row]
            } else if pickerView.tag == 1 {
                label?.text = ArrayFile.electiveArrayIB4Y12[row]
            } else if pickerView.tag == 2 {
                label?.text = ArrayFile.electiveArrayIB7Y12[row]
            } else if pickerView.tag == 3 {
                label?.text = ArrayFile.languageElectiveIB[row]
            } else {
                label?.text = ArrayFile.noElectiveArray[row]
            }
        } else {
            if pickerView.tag == 0 {
                label?.text = ArrayFile.electiveArrayIB2Y13[row]
            } else if pickerView.tag == 1 {
                label?.text = ArrayFile.electiveArrayIB4Y13[row]
            } else if pickerView.tag == 2 {
                label?.text = ArrayFile.electiveArrayIB7Y13[row]
            } else if pickerView.tag == 3 {
                label?.text = ArrayFile.languageElectiveIB[row]
            } else {
                label?.text = ArrayFile.noElectiveArray[row]
            }
        }
        label?.textAlignment = .center
        return label!
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
            if pickerView.tag == 0 {
                elective1Course = ArrayFile.electiveArrayIB2Y12[row]
                print("Elective 1 :" + elective1Course)
            } else if pickerView.tag == 1 {
                elective2Course = ArrayFile.electiveArrayIB4Y12[row]
                print("Elective 2 :" + elective2Course)
            } else if pickerView.tag == 2 {
                elective3Course = ArrayFile.electiveArrayIB7Y12[row]
                print("Elective 3 :" + elective3Course)
            } else  if pickerView.tag == 3 {
                secondLanguageCourse = ArrayFile.languageElectiveIB[row]
                print("Second Language : " + secondLanguageCourse)
            } else{
                print("No electives to be selected")
            }
        } else {
            if pickerView.tag == 0 {
                elective1Course = ArrayFile.electiveArrayIB2Y13[row]
                print("Elective 1 :" + elective1Course)
            } else if pickerView.tag == 1 {
                elective2Course = ArrayFile.electiveArrayIB4Y13[row]
                print("Elective 2 :" + elective2Course)
            } else if pickerView.tag == 2 {
                elective3Course = ArrayFile.electiveArrayIB7Y13[row]
                print("Elective 3 :" + elective3Course)
            } else  if pickerView.tag == 3 {
                secondLanguageCourse = ArrayFile.languageElectiveIB[row]
                print("Second Language : " + secondLanguageCourse)
            } else{
                print("No electives to be selected")
            }
        }
    }
    
    @IBAction func fourHLSwitchToggled(_ sender: AnyObject) {
        if fourHLToggle == 0 {
            print("FourHLSwitch On")
            fourHLToggle = 1
        } else {
            print("FourHLSwitch Off")
            fourHLToggle = 0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "saveElective" {
                let user = RealmHelper.retrieveUsers()[0]
                let realm = RLMRealm.default()
                realm.beginWriteTransaction()
                user.elective1 = elective1Course
                user.elective2 = elective2Course
                user.elective3 = elective3Course
                user.languageCourse = secondLanguageCourse
                user.fourHL = fourHLToggle
                try! realm.commitWriteTransaction()
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any!) -> Bool {
        if identifier == "saveElective" {
            if elective1Course == "Business Management H1" || elective1Course == "Business Management S1" {
                if elective2Course == "Business Management H2" || elective2Course == "Business Management S2" || elective3Course == "Business Management H3" || elective3Course == "Business Management S3" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple business management courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                }
            } else if elective2Course == "Business Management H1" || elective2Course == "Business Management S1" {
                if elective3Course == "Business Management H3" || elective3Course == "Business Management S3" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple business management courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                }
            } else if elective1Course == "Economics H1" {
                if elective3Course == "Economics H2" || elective3Course == "Economics S" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple economics courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                }
            } else if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
                // no other overlapping subjects so far
            } else if currentUser!.yearGroup == "13A" || currentUser!.yearGroup == "13B" || currentUser!.yearGroup == "13C" || currentUser!.yearGroup == "13D" {
                if elective1Course == "Art H (12b)" || elective1Course == "Art S" {
                    if elective2Course == "Art H (12a)" || elective2Course == "Art S" {
                        let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple art courses.", preferredStyle: UIAlertControllerStyle.alert)
                        alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                        present(alertController, animated: true, completion: nil)
                        
                        return false
                    }
                }
            }
        }
        // by default, transition
        return true
    }
}
