//
//  User.swift
//  School Timetable
//
//  Created by 수현 on 8/29/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class User: Object {
    // Properties every User object must have
    dynamic var name = ""
    dynamic var yearGroup = ""
    
    // For IGCSE and IB students
    dynamic var elective1 = ""
    dynamic var elective2 = ""
    dynamic var elective3 = ""
    dynamic var languageCourse = ""
    dynamic var scienceIGCSE = ""
    dynamic var fourHL: Int = 0
    
    // Only for Y12,13
    dynamic var pstudy1 = ""
    dynamic var pstudy2 = ""
    dynamic var pstudy3 = ""
}
