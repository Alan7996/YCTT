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
    
    static func calcDateDifference(_ dateDifference: Int) -> String {
        switch (/* xth week */(round(Double(dateDifference/7)).truncatingRemainder(dividingBy: 6)), /* yth day */ (dateDifference % 7)) {
        case (0, 0):
            return "C"
        case (0, 1):
            return "D"
        case (0, 2):
            return "E"
        case (0, 3):
            return "F"
        case (0, 4):
            return "A"
        case (0, 5):
            return "X"
        case (0, 6):
            return "X"
        case (1, 0):
            return "B"
        case (1, 1):
            return "C"
        case (1, 2):
            return "D"
        case (1, 3):
            return "E"
        case (1, 4):
            return "F"
        case (1, 5):
            return "X"
        case (1, 6):
            return "X"
        case (2, 0):
            return "A"
        case (2, 1):
            return "B"
        case (2, 2):
            return "C"
        case (2, 3):
            return "D"
        case (2, 4):
            return "E"
        case (2, 5):
            return "X"
        case (2, 6):
            return "X"
        case (3, 0):
            return "F"
        case (3, 1):
            return "A"
        case (3, 2):
            return "B"
        case (3, 3):
            return "C"
        case (3, 4):
            return "D"
        case (3, 5):
            return "X"
        case (3, 6):
            return "X"
        case (4, 0):
            return "E"
        case (4, 1):
            return "F"
        case (4, 2):
            return "A"
        case (4, 3):
            return "B"
        case (4, 4):
            return "C"
        case (4, 5):
            return "X"
        case (4, 6):
            return "X"
        case (5, 0):
            return "D"
        case (5, 1):
            return "E"
        case (5, 2):
            return "F"
        case (5, 3):
            return "A"
        case (5, 4):
            return "B"
        case (5, 5):
            return "X"
        case (5, 6):
            return "X"
        default:
            return ""
        }
    }
}
