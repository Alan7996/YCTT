//
//  RealmHelper.swift
//  School Timetable
//
//  Created by 수현 on 8/29/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHelper {
    //static methods will go here
    static func addUser(_ user: User) {
        let realm = try! Realm()
        try! realm.write() {
            realm.add(user)
        }
    }
    
    static func addSubject(_ subject: Subject) {
        let realm = try! Realm()
        try! realm.write() {
            realm.add(subject)
        }
    }

    static func deleteUser(_ user: User) {
        let realm = try! Realm()
        try! realm.write() {
            realm.delete(user)
        }
    }
    
    static func deleteSubject(_ subject: Subject) {
        let realm = try! Realm()
        try! realm.write() {
            realm.delete(subject)
        }
    }

    static func retrieveUsers() -> Results<User> {
        let realm = try! Realm()
        return realm.objects(User.self).sorted(byProperty: "name", ascending: false)
    }
    
    static func retrieveSubjects() -> Results<Subject> {
        let realm = try! Realm()
        return realm.objects(Subject.self).sorted(byProperty: "name", ascending: false)
    }
}




