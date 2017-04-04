//
//  ElectiveIGCSETableViewController.swift
//  YCTT
//
//  Created by 수현 on 9/14/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

class ElectiveIGCSETableViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var selectLabel: UILabel!
    @IBOutlet weak var E1Label: UILabel!
    @IBOutlet weak var E2Label: UILabel!
    @IBOutlet weak var E3Label: UILabel!
    @IBOutlet weak var scienceLabel: UILabel!
    @IBOutlet weak var saveBtn2: UIButton!
    @IBOutlet weak var elective1: UIPickerView!
    @IBOutlet weak var elective2: UIPickerView!
    @IBOutlet weak var elective3: UIPickerView!
    @IBOutlet weak var coordinatedScienceSwitch: UISwitch!
    @IBOutlet weak var saveBtnWidth: NSLayoutConstraint!
    @IBOutlet weak var saveBtnHeight: NSLayoutConstraint!
    
    var elective1Course = ""
    var elective2Course = ""
    var elective3Course = ""
    var scienceIGCSE = "Combined Science"
    
    var switchToggle = 0
    
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

        coordinatedScienceSwitch.setOn(false, animated: true)
        
        let result = RealmHelper.retrieveUsers()
        currentUser = result[0]
        
        if currentUser?.yearGroup == "10A" || currentUser?.yearGroup == "10B" || currentUser?.yearGroup == "10C" || currentUser?.yearGroup == "10D" {
            elective1Course = "Business Studies 1"
            elective2Course = "Business Studies 2"
            elective3Course = "Business Studies 3"
        } else {
            elective1Course = "Art (R.Augustin)"
            elective2Course = "Business Studies 2"
            elective3Course = "Art (M.Cockram)"
        }
        
        if UIScreen.main.bounds.height == 1024 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            E1Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            E2Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            E3Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            scienceLabel.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            saveBtn2.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 80
            saveBtnHeight.constant = 55
        } else if UIScreen.main.bounds.height == 1366 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            E1Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            E2Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            E3Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            scienceLabel.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            saveBtn2.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 80
            saveBtnHeight.constant = 55
        }
    }

    override var shouldAutorotate : Bool {
        return false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if currentUser!.yearGroup == "10A" || currentUser!.yearGroup == "10B" || currentUser!.yearGroup == "10C" || currentUser!.yearGroup == "10D" {
            if pickerView.tag == 0 {
                return ArrayFile.electiveArrayIG1Y10.count
            } else if pickerView.tag == 1 {
                return ArrayFile.electiveArrayIG2Y10.count
            } else if pickerView.tag == 2 {
                return ArrayFile.electiveArrayIG3Y10.count
            } else {
                return ArrayFile.noElectiveArray.count
            }
        } else {
            if pickerView.tag == 0 {
                return ArrayFile.electiveArrayIG1Y11.count
            } else if pickerView.tag == 1 {
                return ArrayFile.electiveArrayIG2Y11.count
            } else if pickerView.tag == 2 {
                return ArrayFile.electiveArrayIG3Y11.count
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
        if currentUser!.yearGroup == "10A" || currentUser!.yearGroup == "10B" || currentUser!.yearGroup == "10C" || currentUser!.yearGroup == "10D" {
            if pickerView.tag == 0 {
                label?.text = ArrayFile.electiveArrayIG1Y10[row]
            } else if pickerView.tag == 1 {
                label?.text = ArrayFile.electiveArrayIG2Y10[row]
            } else if pickerView.tag == 2 {
                label?.text = ArrayFile.electiveArrayIG3Y10[row]
            } else {
                label?.text = ArrayFile.noElectiveArray[row]
            }
        } else {
            if pickerView.tag == 0 {
                label?.text = ArrayFile.electiveArrayIG1Y11[row]
            } else if pickerView.tag == 1 {
                label?.text = ArrayFile.electiveArrayIG2Y11[row]
            } else if pickerView.tag == 2 {
                label?.text = ArrayFile.electiveArrayIG3Y11[row]
            } else {
                label?.text = ArrayFile.noElectiveArray[row]
            }
        }
        label?.textAlignment = .center
        return label!
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if currentUser!.yearGroup == "10A" || currentUser!.yearGroup == "10B" || currentUser!.yearGroup == "10C" || currentUser!.yearGroup == "10D" {
            if pickerView.tag == 0 {
                elective1Course = ArrayFile.electiveArrayIG1Y10[row]
                print("Elective 1 : " + elective1Course)
            } else if pickerView.tag == 1 {
                elective2Course = ArrayFile.electiveArrayIG2Y10[row]
                print("Elective 2 : " + elective2Course)
            } else if pickerView.tag == 2 {
                elective3Course = ArrayFile.electiveArrayIG3Y10[row]
                print("Elective 3 : " + elective3Course)
            } else{
                print("No electives to be selected")
            }
        } else {
            if pickerView.tag == 0 {
                elective1Course = ArrayFile.electiveArrayIG1Y11[row]
                print("Elective 1 : " + elective1Course)
            } else if pickerView.tag == 1 {
                elective2Course = ArrayFile.electiveArrayIG2Y11[row]
                print("Elective 2 : " + elective2Course)
            } else if pickerView.tag == 2 {
                elective3Course = ArrayFile.electiveArrayIG3Y11[row]
                print("Elective 3 : " + elective3Course)
            } else{
                print("No electives to be selected")
            }
        }
    }
    
    @IBAction func coordinatedScienceSwitchToggled(_ sender: AnyObject) {
        if switchToggle == 0 {
            scienceIGCSE = "Coordinated Science"
            print(scienceIGCSE)
            switchToggle = 1
        } else {
            scienceIGCSE = "Combined Science"
            print(scienceIGCSE)
            switchToggle = 0
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
                user.scienceIGCSE = scienceIGCSE
                try! realm.commitWriteTransaction()
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any!) -> Bool {
        if identifier == "saveElective" {
            // need to check what happens if a student wishes to study Business Studies & Economics & Enterprise
            if elective1Course == "Business Studies 1" && elective2Course == "Business Studies 2" || elective1Course == "Business Studies 1" && elective3Course == "Business Studies 3" || elective2Course == "Business Studies 2" && elective3Course == "Business Studies 3"{
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple business studies courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
            } else if elective1Course == "Economics 1" && elective2Course == "Economics 2" || elective1Course == "Economics 1" && elective3Course == "Economics 3" || elective2Course == "Economics 2" && elective3Course == "Economics 3" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple economics courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
            } else if (elective1Course == "Enterprise" && ((elective2Course == "Business Studies 2" && elective3Course == "Economics 3") || (elective2Course == "Economics 2" && elective3Course == "Business Studies 3"))) || (elective2Course == "Enterprise" && ((elective1Course == "Business Studies 1" && elective3Course == "Economics 3") || (elective1Course == "Economics 1" && elective2Course == "Business Studies 3"))) {
                let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose all enterprise & business & economics courses at once.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
                
                return false
            } else if currentUser!.yearGroup == "10A" || currentUser!.yearGroup == "10B" || currentUser!.yearGroup == "10C" || currentUser!.yearGroup == "10D" {
                print("1")
                if elective1Course == "Geography" && elective2Course == "Geography" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple geography courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                } else if elective1Course == "History" && elective3Course == "History" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple history courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                } else if elective1Course == "DT GP" && elective3Course == "DT RM" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple DT courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                } else if elective1Course == "Visual Art 1" && elective2Course == "Visual Art 2" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple visual art courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                }
            } else if currentUser!.yearGroup == "11A" || currentUser!.yearGroup == "11B" || currentUser!.yearGroup == "11C" || currentUser!.yearGroup == "11D" {
                if elective1Course == "Geography" && elective3Course == "Geography" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple geography courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                } else if elective1Course == "Art (R.Augustin)" && elective3Course == "Art (M.Cockram)" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple art courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                } else if elective1Course == "DT (GR)" && elective3Course == "DT" {
                    let alertController = UIAlertController(title: "Colliding Electives", message: "You cannot choose multiple DT courses.", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    
                    return false
                }
            }
        }
        // by default, transition
        return true
    }
}
