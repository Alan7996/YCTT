//
//  Subject.swift
//  School Timetable
//
//  Created by 수현 on 9/1/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class Subject: Object {
    dynamic var name = ""
    dynamic var yearGroup = ""
    dynamic var roomNumber = ""
}