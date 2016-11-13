//
//  LunchMenu.swift
//  YCTT
//
//  Created by 수현 on 10/6/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import Parse

class LunchMenu: PFObject, PFSubclassing {
    private lazy var __once: () = {
            self.registerSubclass()
        }()
    @NSManaged var menus: [String]?
    @NSManaged var date: Date?
    
    static func parseClassName() -> String {
        return "LunchMenu"
    }
    
    override init() {
        super.init()
    }
    
    override class func initialize() {
        var onceToken : Int = 0;
        _ = self.__once
    }
}
