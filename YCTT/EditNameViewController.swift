//
//  EditNameViewController.swift
//  YCTT
//
//  Created by 수현 on 10/2/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import UIKit
import Realm
import RealmSwift

class EditNameViewController: UIViewController {
    @IBOutlet weak var newUserNameTextField: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    
    private var newUserName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newUserNameTextField.text = RealmHelper.retrieveUsers()[0].name
        
        saveBtn.layer.cornerRadius = 5
        
        newUserNameTextField.layer.borderColor = UIColor.white.cgColor
        newUserNameTextField.layer.borderWidth = 1
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UserInfoViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func getNewUserName() -> String {
        return newUserName
    }
    
    func setNewUserName(newName: String) {
        newUserName = newName
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func saveBtnPressed(_ sender: AnyObject) {
        setNewUserName(newName: newUserNameTextField.text!)
        let user = RealmHelper.retrieveUsers()[0]
        let realm = RLMRealm.default()
        realm.beginWriteTransaction()
        user.name = newUserNameTextField.text!
        try! realm.commitWriteTransaction()
        self.dismiss(animated: false, completion: nil)
    }
}
