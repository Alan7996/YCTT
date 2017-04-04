//
//  TimeCheckHelper.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation

class TimeCheckHelper {
    static func timeCheck(_ dateString: String) -> String {
        var hour = Int(dateString.substring(with: Range<String.Index>(dateString.characters.index(dateString.startIndex, offsetBy: 0) ..< dateString.characters.index(dateString.endIndex, offsetBy: -6))))!
        let minute = Int(dateString.substring(with: Range<String.Index>(dateString.characters.index(dateString.startIndex, offsetBy: 3) ..< dateString.characters.index(dateString.endIndex, offsetBy: -3))))!
        let ampm = dateString.substring(with: Range<String.Index>(dateString.characters.index(dateString.startIndex, offsetBy: 6) ..< dateString.characters.index(dateString.endIndex, offsetBy: 0)))
        
        if ampm == "PM" {
            hour -= 12
        }
        
        for time in ArrayFile.timeArray {
            let timeHourA = Int(time.substring(with: Range<String.Index>(time.characters.index(time.startIndex, offsetBy: 0) ..< time.characters.index(time.endIndex, offsetBy: -15))))!
            let timeMinuteA = Int(time.substring(with: Range<String.Index>(time.characters.index(time.startIndex, offsetBy: 3) ..< time.characters.index(time.endIndex, offsetBy: -12))))!
            let timeAMPMA = time.substring(with: Range<String.Index>(time.characters.index(time.startIndex, offsetBy: 5) ..< time.characters.index(time.endIndex, offsetBy: -10)))
            let timeHourB = Int(time.substring(with: Range<String.Index>(time.characters.index(time.startIndex, offsetBy: 10) ..< time.characters.index(time.endIndex, offsetBy: -5))))!
            let timeMinuteB = Int(time.substring(with: Range<String.Index>(time.characters.index(time.startIndex, offsetBy: 13) ..< time.characters.index(time.endIndex, offsetBy: -2))))!
            let timeAMPMB = time.substring(with: Range<String.Index>(time.characters.index(time.startIndex, offsetBy: 15) ..< time.characters.index(time.endIndex, offsetBy: 0)))
            
            // if currently AM
            if ampm == "AM" {
                if timeHourA == timeHourB && timeAMPMA == "AM"{
                    if hour == timeHourA {
                        if minute >= timeMinuteA && minute <= timeMinuteB {
                            return time
                        }
                    }
                } else {
                    if timeAMPMA == "AM" && timeAMPMB == "AM" {
                        if hour >= timeHourA && hour <= timeHourB {
                            if timeHourA == timeHourB {
                                if minute >= timeMinuteA && minute <= timeMinuteB {
                                    return time
                                }
                            } else {
                                if hour == timeHourA {
                                    if minute >= timeMinuteA {
                                        return time
                                    }
                                } else if hour == timeHourB {
                                    if minute <= timeMinuteB {
                                        return time
                                    }
                                }
                            }
                        }
                    } else if timeAMPMA == "AM" && timeAMPMB == "PM" {
                        if hour == 11 {
                            if minute >= timeMinuteA {
                                return time
                            }
                        }
                    }
                }
            // if currently PM
            } else {
                if timeHourA == timeHourB && timeAMPMA == "PM"{
                    if hour == timeHourA {
                        if minute >= timeMinuteA && minute <= timeMinuteB {
                            return time
                        }
                    } else if hour == 0 {
                        if minute >= timeMinuteA {
                            return time
                        }
                    }
                } else if timeAMPMA == "AM" && timeAMPMB == "PM" {
                    if hour == 12 {
                        if minute <= timeMinuteB {
                            return time
                        }
                    }
                } else if timeAMPMA == "PM" && timeAMPMB == "PM" {
                    if timeHourA == 12 && timeHourB == 12 {
                        if minute >= timeMinuteA && minute <= timeMinuteB {
                            return time
                        }
                    } else if timeHourA == 12 {
                        if hour == 0 {
                            if minute >= timeMinuteA {
                                return time
                            }
                        } else if hour == 1{
                            if minute <= timeMinuteB {
                                return time
                            }
                        }
                    } else {
                        if hour >= timeHourA && hour <= timeHourB {
                            if hour == timeHourA {
                                if minute >= timeMinuteA {
                                    return time
                                }
                            } else if hour == timeHourB {
                                if minute <= timeMinuteB {
                                    return time
                                }
                            }
                        }
                    }
                }
            }
        }
        return "not in school"
    }

    static func classCheck(_ currentString: String) -> String {
        let result = RealmHelper.retrieveUsers()
        
        var x = 0
        while x < ArrayFile.timeArray.count {
            if currentString == ArrayFile.timeArray[x] {
                if result[0].yearGroup == "7A" {
                    return ArrayFile.Y7AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "7B" {
                    return ArrayFile.Y7BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "7C" {
                    return ArrayFile.Y7CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "7D" {
                    return ArrayFile.Y7DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "7E" {
                    return ArrayFile.Y7EActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "8A" {
                    return ArrayFile.Y8AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "8B" {
                    return ArrayFile.Y8BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "8C" {
                    return ArrayFile.Y8CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "8D" {
                    return ArrayFile.Y8DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "9A" {
                    return ArrayFile.Y9AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "9B" {
                    return ArrayFile.Y9BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "9C" {
                    return ArrayFile.Y9CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "9D" {
                    return ArrayFile.Y9DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "10A" {
                    return ArrayFile.Y10AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "10B" {
                    return ArrayFile.Y10BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "10C" {
                    return ArrayFile.Y10CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "10D" {
                    return ArrayFile.Y10DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "11A" {
                    return ArrayFile.Y11AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "11B" {
                    return ArrayFile.Y11BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "11C" {
                    return ArrayFile.Y11CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "11D" {
                    return ArrayFile.Y11DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].name
                } else if result[0].yearGroup == "12A" || result[0].yearGroup == "12B" || result[0].yearGroup == "12C" || result[0].yearGroup == "12D" {
                    return ArrayFile.Y12[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x]
                } else {
                    return ArrayFile.Y13[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x]
                }
            }
            x += 1
        }
        
        return "Error: Class Not Found"
    }
    
    static func currentRoomCheck(_ currentString: String) -> String {
        let result = RealmHelper.retrieveUsers()
        
        var x = 0
        while x < ArrayFile.timeArray.count {
            if currentString == ArrayFile.timeArray[x] {
                if result[0].yearGroup == "7A" {
                    return ArrayFile.Y7AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "7B" {
                    return ArrayFile.Y7BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "7C" {
                    return ArrayFile.Y7CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "7D" {
                    return ArrayFile.Y7DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "7E" {
                    return ArrayFile.Y7EActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "8A" {
                    return ArrayFile.Y8AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "8B" {
                    return ArrayFile.Y8BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "8C" {
                    return ArrayFile.Y8CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "8D" {
                    return ArrayFile.Y8DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "9A" {
                    return ArrayFile.Y9AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "9B" {
                    return ArrayFile.Y9BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "9C" {
                    return ArrayFile.Y9CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else if result[0].yearGroup == "9D" {
                    return ArrayFile.Y9DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x].roomNumber
                } else {
                    return ""
                }
            }
            x += 1
        }
        
        return "Error: Class Not Found"
    }
    
    static func nextClassCheck(_ currentString: String) -> String {
        let result = RealmHelper.retrieveUsers()
        
        var x = 0
        while x < ArrayFile.timeArray.count - 1{
            if currentString == ArrayFile.timeArray[x] {
                if result[0].yearGroup == "7A" {
                    return ArrayFile.Y7AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "7B" {
                    return ArrayFile.Y7BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "7C" {
                    return ArrayFile.Y7CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "7D" {
                    return ArrayFile.Y7DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "7E" {
                    return ArrayFile.Y7EActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "8A" {
                    return ArrayFile.Y8AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "8B" {
                    return ArrayFile.Y8BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "8C" {
                    return ArrayFile.Y8CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "8D" {
                    return ArrayFile.Y8DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "9A" {
                    return ArrayFile.Y9AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "9B" {
                    return ArrayFile.Y9BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "9C" {
                    return ArrayFile.Y9CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "9D" {
                    return ArrayFile.Y9DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "10A" {
                    return ArrayFile.Y10AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "10B" {
                    return ArrayFile.Y10BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "10C" {
                    return ArrayFile.Y10CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "10D" {
                    return ArrayFile.Y10DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "11A" {
                    return ArrayFile.Y11AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "11B" {
                    return ArrayFile.Y11BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "11C" {
                    return ArrayFile.Y11CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "11D" {
                    return ArrayFile.Y11DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].name
                } else if result[0].yearGroup == "12A" || result[0].yearGroup == "12B" || result[0].yearGroup == "12C" || result[0].yearGroup == "12D" {
                    return ArrayFile.Y12[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1]
                } else {
                    return ArrayFile.Y13[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1]
                }
            }
            x += 1
        }
        
        return "End of the Day!"
    }
    
    static func nextRoomCheck(_ currentString: String) -> String {
        let result = RealmHelper.retrieveUsers()
        
        var x = 0
        while x < ArrayFile.timeArray.count - 1 {
            if currentString == ArrayFile.timeArray[x] {
                if result[0].yearGroup == "7A" {
                    return ArrayFile.Y7AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "7B" {
                    return ArrayFile.Y7BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "7C" {
                    return ArrayFile.Y7CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "7D" {
                    return ArrayFile.Y7DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "7E" {
                    return ArrayFile.Y7EActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "8A" {
                    return ArrayFile.Y8AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "8B" {
                    return ArrayFile.Y8BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "8C" {
                    return ArrayFile.Y8CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "8D" {
                    return ArrayFile.Y8DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "9A" {
                    return ArrayFile.Y9AActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "9B" {
                    return ArrayFile.Y9BActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "9C" {
                    return ArrayFile.Y9CActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else if result[0].yearGroup == "9D" {
                    return ArrayFile.Y9DActual[DayCheckHelper.dayToNumber(DayCheckHelper.currentDay)][x+1].roomNumber
                } else {
                    return ""
                }
            }
            x += 1
        }
        
        return "Error: Class Not Found"
    }
}
