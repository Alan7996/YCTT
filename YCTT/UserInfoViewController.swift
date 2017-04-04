//
//  UserInfoViewController.swift
//  School Timetable
//
//  Created by 수현 on 8/29/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import RealmSwift


class UserInfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var titleLabel1: UILabel!
    @IBOutlet weak var titleLabel2: UILabel!
    @IBOutlet weak var mainLabel1: UILabel!
    @IBOutlet weak var mainLabel2: UILabel!
    @IBOutlet weak var mainLabel3: UILabel!
    @IBOutlet weak var mainLabel4: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var classPicker: UIPickerView!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var selectedClassLabel: UILabel!
    @IBOutlet weak var topConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var nameConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var chooseClassConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var selectedClassConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var selectedClassNumberConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var nameTextFieldHeight: NSLayoutConstraint!
    @IBOutlet weak var classPickerHeight: NSLayoutConstraint!
    @IBOutlet weak var saveBtnHeight: NSLayoutConstraint!
    @IBOutlet weak var userNameTextFieldWidth: NSLayoutConstraint!
    @IBOutlet weak var userNameTextFieldHeight: NSLayoutConstraint!
    
    var userClass = "7A"
    
    let result = RealmHelper.retrieveUsers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(red: 242, green: 129, blue: 55, alpha: 1.0)
        
        // Formats userNameTextField
        userNameTextField.layer.borderColor = UIColor.white.cgColor
        userNameTextField.layer.borderWidth = 1
        
        // Sets up classPicker for yeargroup/class selection
        classPicker.delegate = self
        classPicker.dataSource = self
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UserInfoViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        if UIScreen.main.bounds.height == 568 {
            titleLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            titleLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 29.0)
            mainLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            mainLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            mainLabel3.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            mainLabel4.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            topConstraintHeight.constant = 30
            nameConstraintHeight.constant = 15
            selectedClassConstraintHeight.constant = 30
            selectedClassNumberConstraintHeight.constant = 30
            nameTextFieldHeight.constant = 30
            classPickerHeight.constant = 100
            saveBtnHeight.constant = 50
        } else if UIScreen.main.bounds.height == 667 {
            titleLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 28.0)
            titleLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 32.0)
            mainLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 21.0)
            mainLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 21.0)
            mainLabel3.font = UIFont(name: "RobotoSlab-Regular", size: 21.0)
            mainLabel4.font = UIFont(name: "RobotoSlab-Regular", size: 21.0)
            topConstraintHeight.constant = 30
            nameConstraintHeight.constant = 20
            selectedClassConstraintHeight.constant = 40
            selectedClassNumberConstraintHeight.constant = 40
            nameTextFieldHeight.constant = 30
            classPickerHeight.constant = 130
            saveBtnHeight.constant = 65
        } else if UIScreen.main.bounds.height == 736 {
            titleLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 31.0)
            titleLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 37.0)
            mainLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 24.0)
            mainLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 24.0)
            mainLabel3.font = UIFont(name: "RobotoSlab-Regular", size: 24.0)
            mainLabel4.font = UIFont(name: "RobotoSlab-Regular", size: 24.0)
            topConstraintHeight.constant = 30
            nameConstraintHeight.constant = 25
            chooseClassConstraintHeight.constant = 50
            selectedClassConstraintHeight.constant = 50
            selectedClassNumberConstraintHeight.constant = 50
            nameTextFieldHeight.constant = 30
            classPickerHeight.constant = 130
            saveBtnHeight.constant = 80
        } else if UIScreen.main.bounds.height == 480 /*1024*/ {
            titleLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 25.0)
            titleLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 29.0)
            mainLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            mainLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            mainLabel3.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            mainLabel4.font = UIFont(name: "RobotoSlab-Regular", size: 19.0)
            topConstraintHeight.constant = 30
            nameConstraintHeight.constant = 15
            selectedClassConstraintHeight.constant = 30
            selectedClassNumberConstraintHeight.constant = 30
            nameTextFieldHeight.constant = 30
            classPickerHeight.constant = 100
            saveBtnHeight.constant = 50
            chooseClassConstraintHeight.constant = 10
            selectedClassConstraintHeight.constant = 0
            selectedClassNumberConstraintHeight.constant = 0
            /*titleLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            titleLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 60.0)
            mainLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            mainLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            mainLabel3.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            mainLabel4.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
            topConstraintHeight.constant = 30
            nameConstraintHeight.constant = 25
            chooseClassConstraintHeight.constant = 50
            selectedClassConstraintHeight.constant = 50
            selectedClassNumberConstraintHeight.constant = 50
            nameTextFieldHeight.constant = 30
            classPickerHeight.constant = 200
            saveBtnHeight.constant = 100
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 50.0)
            userNameTextFieldWidth.constant = 400
            userNameTextFieldHeight.constant = 50
            userNameTextField.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)*/
        } else if UIScreen.main.bounds.height == 1366 {
            titleLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 51.0)
            titleLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 76.0)
            mainLabel1.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            mainLabel2.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            mainLabel3.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            mainLabel4.font = UIFont(name: "RobotoSlab-Regular", size: 45.0)
            topConstraintHeight.constant = 30
            nameConstraintHeight.constant = 25
            chooseClassConstraintHeight.constant = 50
            selectedClassConstraintHeight.constant = 50
            selectedClassNumberConstraintHeight.constant = 50
            nameTextFieldHeight.constant = 30
            classPickerHeight.constant = 200
            saveBtnHeight.constant = 100
            saveBtn.titleLabel!.font = UIFont(name: "RobotoSlab-Regular", size: 50.0)
            userNameTextFieldWidth.constant = 400
            userNameTextFieldHeight.constant = 50
            userNameTextField.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
        }
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ArrayFile.classArray.count
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
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
        } else if UIScreen.main.bounds.height == 1024 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 40.0)
        } else if UIScreen.main.bounds.height == 1366 {
            label?.font = UIFont(name: "RobotoSlab-Regular", size: 50.0)
        }
        label?.textColor = UIColor.white
        label?.text = ArrayFile.classArray[row]
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
        userClass = ArrayFile.classArray[row]
        selectedClassLabel.text = userClass
        print(userClass)
        dismissKeyboard()
    }
    
    @IBAction func saveBtnPressed(_ sender: AnyObject) {
        // perform segue based on which yeargroup
        if userNameTextField.text == nil || userNameTextField.text == "" {
            let alertController = UIAlertController(title: "No Name Entered", message: "Please Enter Your Name", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(alertController, animated: true, completion: nil)
        } else {
            if userClass == "7A" || userClass == "7B" || userClass == "7C" || userClass == "7D" || userClass == "7E" || userClass == "8A" || userClass == "8B" || userClass == "8C" || userClass == "8D" || userClass == "9A" || userClass == "9B" || userClass == "9C" || userClass == "9D" {
                performSegue(withIdentifier: "saveUserNoElec", sender: nil)
            } else if userClass == "10A" || userClass == "10B" || userClass == "10C" || userClass == "10D" || userClass == "11A" || userClass == "11B" || userClass == "11C" || userClass == "11D" {
                performSegue(withIdentifier: "saveUserIGCSE", sender: nil)
                let selectElectiveIGCSETableViewController = self.storyboard!.instantiateViewController(withIdentifier: "SelectElectiveIGCSETableViewController")
                let window = UIApplication.shared.windows[0]
                window.rootViewController! = selectElectiveIGCSETableViewController
            } else {
                performSegue(withIdentifier: "saveUser", sender: nil)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            // check which identifier the segue called has
            if identifier == "saveUser" || identifier == "saveUserIGCSE" {
                // create an empty User object and fill in the properties with user inputs
                let newUser = User()
                newUser.name = userNameTextField.text!
                newUser.yearGroup = userClass
                // save newUser to Realm
                RealmHelper.addUser(newUser)

                // delete empty User object created from AppDelegate
                RealmHelper.deleteUser(result[1])
            } else if identifier == "saveUserNoElec" {
                // same as above
                let newUser = User()
                newUser.name = userNameTextField.text!
                newUser.yearGroup = userClass
                RealmHelper.addUser(newUser)
                
                RealmHelper.deleteUser(result[1])
            }
        }
    }

}
