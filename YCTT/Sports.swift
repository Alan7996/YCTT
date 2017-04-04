//
//  Sports.swift
//  YCTT
//
//  Created by 수현 on 2/10/17.
//  Copyright © 2017 YCIS-PX. All rights reserved.
//

import Foundation
import Parse

class Sports: PFObject, PFSubclassing {
    // Properties every Sports object must have
    @NSManaged var sportType: String?
    @NSManaged var opponent: String?
    @NSManaged var date: Date?
    
    // Identify which Parse class this object belongs to
    static func parseClassName() -> String {
        return "Sports"
    }
    
    override init() {
        super.init()
    }
}
