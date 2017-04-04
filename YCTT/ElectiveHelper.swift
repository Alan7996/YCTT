//
//  ElectiveHelper.swift
//  School Timetable
//
//  Created by 수현 on 8/30/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation

class ElectiveHelper {
    
    static func timeTableElectiveApplier(_ yearGroup: String) {
        let user = RealmHelper.retrieveUsers()[0]
        // Y10
        if yearGroup == "10A" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y10AString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y10AString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y10AString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y10AString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 4) || (x == 3 && y == 3) {
                            ArrayFile.Y10AString[x][y] = "Physics"
                        } else if (x == 1 && y == 0) || (x == 4 && y == 1) {
                            ArrayFile.Y10AString[x][y] = "Biology"
                        } else if (x == 2 && y == 7) || (x == 5 && y == 3) {
                            ArrayFile.Y10AString[x][y] = "Chemistry"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        if (x == 5 && y == 1) || (x == 6 && y == 3) {
                            ArrayFile.Y10AString[x][y] = "Additional English Support"
                        } else {
                            ArrayFile.Y10AString[x][y] = user.scienceIGCSE
                        }
                    }
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "10B" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y10BString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y10BString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y10BString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y10BString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 4) || (x == 3 && y == 3) {
                            ArrayFile.Y10BString[x][y] = "Physics"
                        } else if (x == 1 && y == 0) || (x == 4 && y == 1) {
                            ArrayFile.Y10BString[x][y] = "Biology"
                        } else if (x == 2 && y == 7) || (x == 5 && y == 3) {
                            ArrayFile.Y10BString[x][y] = "Chemistry"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        if (x == 5 && y == 1) || (x == 6 && y == 3) {
                            ArrayFile.Y10BString[x][y] = "Additional English Support"
                        } else {
                            ArrayFile.Y10BString[x][y] = user.scienceIGCSE
                        }
                    }
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "10C" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y10CString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y10CString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y10CString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y10CString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 4) || (x == 3 && y == 3) {
                            ArrayFile.Y10CString[x][y] = "Chemistry"
                        } else if (x == 1 && y == 0) || (x == 4 && y == 1) {
                            ArrayFile.Y10CString[x][y] = "Physics"
                        } else if (x == 2 && y == 7) || (x == 5 && y == 3) {
                            ArrayFile.Y10CString[x][y] = "Biology"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        if (x == 5 && y == 1) || (x == 6 && y == 3) {
                            ArrayFile.Y10CString[x][y] = "Additional English Support"
                        } else {
                            ArrayFile.Y10CString[x][y] = user.scienceIGCSE
                        }
                    }
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "10D" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y10DString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y10DString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y10DString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y10DString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 4) || (x == 3 && y == 3) {
                            ArrayFile.Y10DString[x][y] = "Chemistry"
                        } else if (x == 1 && y == 0) || (x == 4 && y == 1) {
                            ArrayFile.Y10DString[x][y] = "Physics"
                        } else if (x == 2 && y == 7) || (x == 5 && y == 3) {
                            ArrayFile.Y10DString[x][y] = "Biology"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        if (x == 5 && y == 1) || (x == 6 && y == 3) {
                            ArrayFile.Y10DString[x][y] = "Additional English Support"
                        } else {
                            ArrayFile.Y10DString[x][y] = user.scienceIGCSE
                        }
                    }
                    y += 1
                }
                x += 1
            }
        }
        // Y11
        if yearGroup == "11A" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y11AString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y11AString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y11AString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y11AString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 5) || (x == 3 && y == 8) {
                            ArrayFile.Y11AString[x][y] = "Physics"
                        } else if (x == 1 && y == 1) || (x == 4 && y == 4) {
                            ArrayFile.Y11AString[x][y] = "Biology"
                        } else if (x == 2 && y == 3) || (x == 5 && y == 7) {
                            ArrayFile.Y11AString[x][y] = "Chemistry"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        ArrayFile.Y11AString[x][y] = user.scienceIGCSE
                    }

                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "11B" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y11BString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y11BString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y11BString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y11BString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 5) || (x == 3 && y == 8) {
                            ArrayFile.Y11BString[x][y] = "Physics"
                        } else if (x == 1 && y == 1) || (x == 4 && y == 4) {
                            ArrayFile.Y11BString[x][y] = "Biology"
                        } else if (x == 2 && y == 3) || (x == 5 && y == 7) {
                            ArrayFile.Y11BString[x][y] = "Chemistry"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        ArrayFile.Y11BString[x][y] = user.scienceIGCSE
                    }
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "11C" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y11CString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y11CString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y11CString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y11CString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 5) || (x == 3 && y == 8) {
                            ArrayFile.Y11CString[x][y] = "Chemistry"
                        } else if (x == 1 && y == 1) || (x == 4 && y == 4) {
                            ArrayFile.Y11CString[x][y] = "Physics"
                        } else if (x == 2 && y == 3) || (x == 5 && y == 7) {
                            ArrayFile.Y11CString[x][y] = "Biology"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        ArrayFile.Y11CString[x][y] = user.scienceIGCSE
                    }
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "11D" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y11DString[x][y]
                    if periodName == "E1" {
                        ArrayFile.Y11DString[x][y] = user.elective1
                    } else if periodName == "E2" {
                        ArrayFile.Y11DString[x][y] = user.elective2
                    } else if periodName == "E3" {
                        ArrayFile.Y11DString[x][y] = user.elective3
                    } else if periodName == "Science" && user.scienceIGCSE == "Coordinated Science" {
                        if (x == 0 && y == 5) || (x == 3 && y == 8) {
                            ArrayFile.Y11DString[x][y] = "Biology"
                        } else if (x == 1 && y == 1) || (x == 4 && y == 4) {
                            ArrayFile.Y11DString[x][y] = "Chemistry"
                        } else if (x == 2 && y == 3) || (x == 5 && y == 7) {
                            ArrayFile.Y11DString[x][y] = "Physics"
                        }
                    } else if periodName == "Science" && user.scienceIGCSE == "Combined Science" {
                        ArrayFile.Y11DString[x][y] = user.scienceIGCSE
                    }
                    y += 1
                }
                x += 1
            }
        }
        // Y12
        if yearGroup == "12A" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y12[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y12[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y12[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y12[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12A[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12A[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12A[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12A[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12A[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y12[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 3) && (user.pstudy1 == "Day A - P3" || user.pstudy2 == "Day A - P3" || user.pstudy3 == "Day A - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 1 && y == 8) && (user.pstudy1 == "Day B - P7" || user.pstudy2 == "Day B - P7" || user.pstudy3 == "Day B - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 3) && (user.pstudy1 == "Day C - P3" || user.pstudy2 == "Day C - P3" || user.pstudy3 == "Day C - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 7) && (user.pstudy1 == "Day C - P6" || user.pstudy2 == "Day C - P6" || user.pstudy3 == "Day C - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 8) && (user.pstudy1 == "Day C - P7" || user.pstudy2 == "Day C - P7" || user.pstudy3 == "Day C - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 1) && (user.pstudy1 == "Day D - P2" || user.pstudy2 == "Day D - P2" || user.pstudy3 == "Day D - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 4) && (user.pstudy1 == "Day D - P4" || user.pstudy2 == "Day D - P4" || user.pstudy3 == "Day D - P4") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 5) && (user.pstudy1 == "Day D - P5" || user.pstudy2 == "Day D - P5" || user.pstudy3 == "Day D - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 5) && (user.pstudy1 == "Day E - P5" || user.pstudy2 == "Day E - P5" || user.pstudy3 == "Day E - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 7) && (user.pstudy1 == "Day E - P6" || user.pstudy2 == "Day E - P6" || user.pstudy3 == "Day E - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 1) && (user.pstudy1 == "Day F - P2" || user.pstudy2 == "Day F - P2" || user.pstudy3 == "Day F - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    }
                    
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "12B" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y12[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y12[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y12[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y12[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12B[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12B[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12B[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12B[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12B[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y12[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 3) && (user.pstudy1 == "Day A - P3" || user.pstudy2 == "Day A - P3" || user.pstudy3 == "Day A - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 1 && y == 8) && (user.pstudy1 == "Day B - P7" || user.pstudy2 == "Day B - P7" || user.pstudy3 == "Day B - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 3) && (user.pstudy1 == "Day C - P3" || user.pstudy2 == "Day C - P3" || user.pstudy3 == "Day C - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 7) && (user.pstudy1 == "Day C - P6" || user.pstudy2 == "Day C - P6" || user.pstudy3 == "Day C - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 8) && (user.pstudy1 == "Day C - P7" || user.pstudy2 == "Day C - P7" || user.pstudy3 == "Day C - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 1) && (user.pstudy1 == "Day D - P2" || user.pstudy2 == "Day D - P2" || user.pstudy3 == "Day D - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 4) && (user.pstudy1 == "Day D - P4" || user.pstudy2 == "Day D - P4" || user.pstudy3 == "Day D - P4") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 5) && (user.pstudy1 == "Day D - P5" || user.pstudy2 == "Day D - P5" || user.pstudy3 == "Day D - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 5) && (user.pstudy1 == "Day E - P5" || user.pstudy2 == "Day E - P5" || user.pstudy3 == "Day E - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 7) && (user.pstudy1 == "Day E - P6" || user.pstudy2 == "Day E - P6" || user.pstudy3 == "Day E - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 1) && (user.pstudy1 == "Day F - P2" || user.pstudy2 == "Day F - P2" || user.pstudy3 == "Day F - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    }
                    
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "12C" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y12[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y12[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y12[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y12[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12C[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12C[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12C[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12C[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12C[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y12[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 3) && (user.pstudy1 == "Day A - P3" || user.pstudy2 == "Day A - P3" || user.pstudy3 == "Day A - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 1 && y == 8) && (user.pstudy1 == "Day B - P7" || user.pstudy2 == "Day B - P7" || user.pstudy3 == "Day B - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 3) && (user.pstudy1 == "Day C - P3" || user.pstudy2 == "Day C - P3" || user.pstudy3 == "Day C - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 7) && (user.pstudy1 == "Day C - P6" || user.pstudy2 == "Day C - P6" || user.pstudy3 == "Day C - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 8) && (user.pstudy1 == "Day C - P7" || user.pstudy2 == "Day C - P7" || user.pstudy3 == "Day C - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 1) && (user.pstudy1 == "Day D - P2" || user.pstudy2 == "Day D - P2" || user.pstudy3 == "Day D - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 4) && (user.pstudy1 == "Day D - P4" || user.pstudy2 == "Day D - P4" || user.pstudy3 == "Day D - P4") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 5) && (user.pstudy1 == "Day D - P5" || user.pstudy2 == "Day D - P5" || user.pstudy3 == "Day D - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 5) && (user.pstudy1 == "Day E - P5" || user.pstudy2 == "Day E - P5" || user.pstudy3 == "Day E - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 7) && (user.pstudy1 == "Day E - P6" || user.pstudy2 == "Day E - P6" || user.pstudy3 == "Day E - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 1) && (user.pstudy1 == "Day F - P2" || user.pstudy2 == "Day F - P2" || user.pstudy3 == "Day F - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    }

                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "12D" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y12[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y12[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y12[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y12[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12D[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12D[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12D[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12D[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y12[x][y] = ArrayFile.Y12D[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y12[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 3) && (user.pstudy1 == "Day A - P3" || user.pstudy2 == "Day A - P3" || user.pstudy3 == "Day A - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 1 && y == 8) && (user.pstudy1 == "Day B - P7" || user.pstudy2 == "Day B - P7" || user.pstudy3 == "Day B - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 3) && (user.pstudy1 == "Day C - P3" || user.pstudy2 == "Day C - P3" || user.pstudy3 == "Day C - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 7) && (user.pstudy1 == "Day C - P6" || user.pstudy2 == "Day C - P6" || user.pstudy3 == "Day C - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 2 && y == 8) && (user.pstudy1 == "Day C - P7" || user.pstudy2 == "Day C - P7" || user.pstudy3 == "Day C - P7") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 1) && (user.pstudy1 == "Day D - P2" || user.pstudy2 == "Day D - P2" || user.pstudy3 == "Day D - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 4) && (user.pstudy1 == "Day D - P4" || user.pstudy2 == "Day D - P4" || user.pstudy3 == "Day D - P4") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 3 && y == 5) && (user.pstudy1 == "Day D - P5" || user.pstudy2 == "Day D - P5" || user.pstudy3 == "Day D - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 5) && (user.pstudy1 == "Day E - P5" || user.pstudy2 == "Day E - P5" || user.pstudy3 == "Day E - P5") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 4 && y == 7) && (user.pstudy1 == "Day E - P6" || user.pstudy2 == "Day E - P6" || user.pstudy3 == "Day E - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 1) && (user.pstudy1 == "Day F - P2" || user.pstudy2 == "Day F - P2" || user.pstudy3 == "Day F - P2") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y12[x][y] = "P-Study"
                    }

                    y += 1
                }
                x += 1
            }
        }
        // Y13
        else if yearGroup == "13A" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y13[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y13[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y13[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y13[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13A[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13A[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13A[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13A[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13A[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y13[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 0) && (user.pstudy1 == "Day A - P1" || user.pstudy2 == "Day A - P1" || user.pstudy3 == "Day A - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 0 && y == 8) && (user.pstudy1 == "Day A - P7" || user.pstudy2 == "Day A - P7" || user.pstudy3 == "Day A - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 4) && (user.pstudy1 == "Day B - P4" || user.pstudy2 == "Day B - P4" || user.pstudy3 == "Day B - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 5) && (user.pstudy1 == "Day B - P5" || user.pstudy2 == "Day B - P5" || user.pstudy3 == "Day B - P5") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 2 && y == 4) && (user.pstudy1 == "Day C - P4" || user.pstudy2 == "Day C - P4" || user.pstudy3 == "Day C - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 3) && (user.pstudy1 == "Day D - P3" || user.pstudy2 == "Day D - P3" || user.pstudy3 == "Day D - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 7) && (user.pstudy1 == "Day D - P6" || user.pstudy2 == "Day D - P6" || user.pstudy3 == "Day D - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 8) && (user.pstudy1 == "Day D - P7" || user.pstudy2 == "Day D - P7" || user.pstudy3 == "Day D - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 4 && y == 4) && (user.pstudy1 == "Day E - P4" || user.pstudy2 == "Day E - P4" || user.pstudy3 == "Day E - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 0) && (user.pstudy1 == "Day F - P1" || user.pstudy2 == "Day F - P1" || user.pstudy3 == "Day F - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    }
                    
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "13B" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y13[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y13[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y13[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y13[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13B[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13B[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13B[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13B[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13B[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y13[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 0) && (user.pstudy1 == "Day A - P1" || user.pstudy2 == "Day A - P1" || user.pstudy3 == "Day A - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 0 && y == 8) && (user.pstudy1 == "Day A - P7" || user.pstudy2 == "Day A - P7" || user.pstudy3 == "Day A - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 4) && (user.pstudy1 == "Day B - P4" || user.pstudy2 == "Day B - P4" || user.pstudy3 == "Day B - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 5) && (user.pstudy1 == "Day B - P5" || user.pstudy2 == "Day B - P5" || user.pstudy3 == "Day B - P5") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 2 && y == 4) && (user.pstudy1 == "Day C - P4" || user.pstudy2 == "Day C - P4" || user.pstudy3 == "Day C - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 3) && (user.pstudy1 == "Day D - P3" || user.pstudy2 == "Day D - P3" || user.pstudy3 == "Day D - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 7) && (user.pstudy1 == "Day D - P6" || user.pstudy2 == "Day D - P6" || user.pstudy3 == "Day D - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 8) && (user.pstudy1 == "Day D - P7" || user.pstudy2 == "Day D - P7" || user.pstudy3 == "Day D - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 4 && y == 4) && (user.pstudy1 == "Day E - P4" || user.pstudy2 == "Day E - P4" || user.pstudy3 == "Day E - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 0) && (user.pstudy1 == "Day F - P1" || user.pstudy2 == "Day F - P1" || user.pstudy3 == "Day F - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    }
                    
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "13C" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y13[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y13[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y13[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y13[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13C[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13C[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13C[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13C[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13C[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y13[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 0) && (user.pstudy1 == "Day A - P1" || user.pstudy2 == "Day A - P1" || user.pstudy3 == "Day A - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 0 && y == 8) && (user.pstudy1 == "Day A - P7" || user.pstudy2 == "Day A - P7" || user.pstudy3 == "Day A - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 4) && (user.pstudy1 == "Day B - P4" || user.pstudy2 == "Day B - P4" || user.pstudy3 == "Day B - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 5) && (user.pstudy1 == "Day B - P5" || user.pstudy2 == "Day B - P5" || user.pstudy3 == "Day B - P5") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 2 && y == 4) && (user.pstudy1 == "Day C - P4" || user.pstudy2 == "Day C - P4" || user.pstudy3 == "Day C - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 3) && (user.pstudy1 == "Day D - P3" || user.pstudy2 == "Day D - P3" || user.pstudy3 == "Day D - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 7) && (user.pstudy1 == "Day D - P6" || user.pstudy2 == "Day D - P6" || user.pstudy3 == "Day D - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 8) && (user.pstudy1 == "Day D - P7" || user.pstudy2 == "Day D - P7" || user.pstudy3 == "Day D - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 4 && y == 4) && (user.pstudy1 == "Day E - P4" || user.pstudy2 == "Day E - P4" || user.pstudy3 == "Day E - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 0) && (user.pstudy1 == "Day F - P1" || user.pstudy2 == "Day F - P1" || user.pstudy3 == "Day F - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    }
                    
                    y += 1
                }
                x += 1
            }
        } else if yearGroup == "13D" {
            var x = 0
            while x < 6 {
                var y = 0
                while y < 9 {
                    let periodName = ArrayFile.Y13[x][y]
                    if periodName == "E2" {
                        ArrayFile.Y13[x][y] = user.elective1
                    } else if periodName == "E4" {
                        ArrayFile.Y13[x][y] = user.elective2
                    } else if periodName == "E7" {
                        ArrayFile.Y13[x][y] = user.elective3
                    } else if periodName == "C0" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13D[0]
                    } else if periodName == "C1" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13D[1]
                    } else if periodName == "C2" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13D[2]
                    } else if periodName == "C3" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13D[3]
                    } else if periodName == "C4" {
                        ArrayFile.Y13[x][y] = ArrayFile.Y13D[4]
                    } else if periodName == "Language" {
                        ArrayFile.Y13[x][y] = user.languageCourse
                    }
                    
                    // assign pstudy
                    if (x == 0 && y == 0) && (user.pstudy1 == "Day A - P1" || user.pstudy2 == "Day A - P1" || user.pstudy3 == "Day A - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 0 && y == 8) && (user.pstudy1 == "Day A - P7" || user.pstudy2 == "Day A - P7" || user.pstudy3 == "Day A - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 4) && (user.pstudy1 == "Day B - P4" || user.pstudy2 == "Day B - P4" || user.pstudy3 == "Day B - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 1 && y == 5) && (user.pstudy1 == "Day B - P5" || user.pstudy2 == "Day B - P5" || user.pstudy3 == "Day B - P5") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 2 && y == 4) && (user.pstudy1 == "Day C - P4" || user.pstudy2 == "Day C - P4" || user.pstudy3 == "Day C - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 3) && (user.pstudy1 == "Day D - P3" || user.pstudy2 == "Day D - P3" || user.pstudy3 == "Day D - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 7) && (user.pstudy1 == "Day D - P6" || user.pstudy2 == "Day D - P6" || user.pstudy3 == "Day D - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 3 && y == 8) && (user.pstudy1 == "Day D - P7" || user.pstudy2 == "Day D - P7" || user.pstudy3 == "Day D - P7") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 4 && y == 4) && (user.pstudy1 == "Day E - P4" || user.pstudy2 == "Day E - P4" || user.pstudy3 == "Day E - P4") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 0) && (user.pstudy1 == "Day F - P1" || user.pstudy2 == "Day F - P1" || user.pstudy3 == "Day F - P1") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 3) && (user.pstudy1 == "Day F - P3" || user.pstudy2 == "Day F - P3" || user.pstudy3 == "Day F - P3") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    } else if (x == 5 && y == 7) && (user.pstudy1 == "Day F - P6" || user.pstudy2 == "Day F - P6" || user.pstudy3 == "Day F - P6") {
                        ArrayFile.Y13[x][y] = "P-Study"
                    }
                    
                    y += 1
                }
                x += 1
            }
        }
    }
}
