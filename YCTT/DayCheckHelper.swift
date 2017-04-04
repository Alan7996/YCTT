//
//  DayCheckHelper.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation

class DayCheckHelper {
    static var currentDay = "A"
    
    static func changedDate(_ day: String) {
        if day == "A" {
            currentDay = "A"
        } else if day == "B" {
            currentDay = "B"
        } else if day == "C" {
            currentDay = "C"
        } else if day == "D" {
            currentDay = "D"
        } else if day == "E" {
            currentDay = "E"
        } else if day == "F" {
            currentDay = "F"
        }
        print(currentDay)
    }
    
    static func dayToNumber(_ day: String) -> Int {
        // takes in string parameters and returns corresponding integer
        if day == "A" {
            return 0
        } else if day == "B" {
            return 1
        } else if day == "C" {
            return 2
        } else if day == "D" {
            return 3
        } else if day == "E" {
            return 4
        } else if day == "F" {
            return 5
        } else if day == "X" {
            return 0
        } else {
            print("Error: Day Not Found")
            return 0
        }
    }
}
