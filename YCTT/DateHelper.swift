//
//  DateHelper.swift
//  YCTT
//
//  Created by 수현 on 10/6/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation

class DateHelper {
    
    static func stringFromDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "M/dd"
        
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
}
