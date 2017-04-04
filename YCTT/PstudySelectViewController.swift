//
//  PstudySelectViewController.swift
//  YCTT
//
//  Created by 수현 on 11/6/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

class PstudySelectViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var selectLabel: UILabel!
    @IBOutlet weak var P1Label: UILabel!
    @IBOutlet weak var P2Label: UILabel!
    @IBOutlet weak var P3Label: UILabel!
    @IBOutlet weak var pstudyFirstPickerView: UIPickerView!
    @IBOutlet weak var pstudySecondPickerView: UIPickerView!
    @IBOutlet weak var pstudyThirdPickerView: UIPickerView!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var saveBtnWidth: NSLayoutConstraint!
    @IBOutlet weak var saveBtnHeight: NSLayoutConstraint!
    @IBOutlet weak var saveBtnDistance: NSLayoutConstraint!
    
    var pstudy1Time = ""
    var pstudy2Time = ""
    var pstudy3Time = ""
    
    var currentUser: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveBtn.layer.cornerRadius = 5
        
        pstudyFirstPickerView.delegate = self
        pstudyFirstPickerView.dataSource = self
        pstudyFirstPickerView.tag = 0
        pstudySecondPickerView.delegate = self
        pstudySecondPickerView.dataSource = self
        pstudySecondPickerView.tag = 1
        pstudyThirdPickerView.delegate = self
        pstudyThirdPickerView.dataSource = self
        pstudyThirdPickerView.tag = 2

        let result = RealmHelper.retrieveUsers()
        currentUser = result[0]

        if currentUser!.fourHL == 1 {
            P3Label.isHidden = true
            pstudyThirdPickerView.isHidden = true
        }
        
        if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
            if currentUser!.fourHL == 0 {
                pstudy1Time = "Day A - P3"
                pstudy2Time = "Day A - P3"
                pstudy3Time = "Day A - P3"
            } else if currentUser!.fourHL == 1 {
                pstudy1Time = "Day A - P3"
                pstudy2Time = "Day A - P3"
            }
        } else {
            if currentUser!.fourHL == 0 {
                pstudy1Time = "Day A - P1"
                pstudy2Time = "Day A - P1"
                pstudy3Time = "Day A - P1"
            } else if currentUser!.fourHL == 1 {
                pstudy1Time = "Day A - P1"
                pstudy2Time = "Day A - P1"
            }
        }
        
        if UIScreen.main.bounds.height == 667 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            P1Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            P2Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            P3Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 22.0)
            saveBtnWidth.constant = 70
            saveBtnHeight.constant = 47
            saveBtnDistance.constant = 60
        } else if UIScreen.main.bounds.height == 736 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            P1Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            P2Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            P3Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 80
            saveBtnHeight.constant = 55
            saveBtnDistance.constant = 80
        } else if UIScreen.main.bounds.height == 480 /*1024*/ {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            P1Label.font = UIFont(name: "RobotoSlab-Regular", size: 14.0)
            P2Label.font = UIFont(name: "RobotoSlab-Regular", size: 14.0)
            P3Label.font = UIFont(name: "RobotoSlab-Regular", size: 14.0)
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 14.0)
            saveBtnWidth.constant = 42
            saveBtnHeight.constant = 24
            saveBtnDistance.constant = 0
            /*selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            P1Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            P2Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            P3Label.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 80
            saveBtnHeight.constant = 55
//            saveBtnDistance.constant = 60*/
        } else if UIScreen.main.bounds.height == 1366 {
            selectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 30.0)
            P1Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            P2Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            P3Label.font = UIFont(name: "RobotoSlab-Regular", size: 23.0)
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            saveBtnWidth.constant = 100
            saveBtnHeight.constant = 60
//            saveBtnDistance.constant = 60
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
            return 13
        } else {
            return 12
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
            label?.text = ArrayFile.Y12Pstudy[row]
        } else {
            label?.text = ArrayFile.Y13Pstudy[row]
        }
        label?.textAlignment = .center
        return label!
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if currentUser!.yearGroup == "12A" || currentUser!.yearGroup == "12B" || currentUser!.yearGroup == "12C" || currentUser!.yearGroup == "12D" {
            if pickerView.tag == 0 {
                pstudy1Time = ArrayFile.Y12Pstudy[row]
                print("Pstudy 1 :" + pstudy1Time)
            } else if pickerView.tag == 1 {
                pstudy2Time = ArrayFile.Y12Pstudy[row]
                print("Pstudy 2 :" + pstudy2Time)
            } else if pickerView.tag == 2 {
                pstudy3Time = ArrayFile.Y12Pstudy[row]
                print("Pstudy 3 :" + pstudy3Time)
            } else{
                print("No electives to be selected")
            }
        } else {
            if pickerView.tag == 0 {
                pstudy1Time = ArrayFile.Y13Pstudy[row]
                print("Pstudy 1 :" + pstudy1Time)
            } else if pickerView.tag == 1 {
                pstudy2Time = ArrayFile.Y13Pstudy[row]
                print("Pstudy 2 :" + pstudy2Time)
            } else if pickerView.tag == 2 {
                pstudy3Time = ArrayFile.Y13Pstudy[row]
                print("Pstudy 3 :" + pstudy3Time)
            } else{
                print("No electives to be selected")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "savePstudy" {
                let user = RealmHelper.retrieveUsers()[0]
                let realm = RLMRealm.default()
                realm.beginWriteTransaction()
                user.pstudy1 = pstudy1Time
                user.pstudy2 = pstudy2Time
                user.pstudy3 = pstudy3Time
                try! realm.commitWriteTransaction()
            }
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any!) -> Bool {
        if identifier == "savePstudy" {
            if pstudy1Time == pstudy2Time || pstudy1Time == pstudy3Time || pstudy2Time == pstudy3Time {
                let alertController = UIAlertController(title: "Colliding Pstudy", message: "You cannot choose multiple of same pstudy times.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
                
                return false
            }
        }
        // by default, transition
        return true
    }
}
