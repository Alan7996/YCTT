//
//  ArrayFile.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation

class ArrayFile {
    static let dayArray = ["A", "B", "C", "D", "E", "F"]
    
    static let classArray = ["7A", "7B", "7C", "7D", "7E", "8A", "8B", "8C", "8D", "9A", "9B", "9C", "9D", "10A", "10B", "10C", "10D", "11A", "11B", "11C", "11D", "12A", "12B", "12C", "12D", "13A", "13B", "13C", "13D"]
    
    static let timeArray = ["08:15AM - 09:05AM", "09:06AM - 09:55AM", "09:56AM - 10:25AM", "10:26AM - 11:15AM", "11:16AM - 12:05PM", "12:06PM - 12:55PM", "12:56PM - 01:50PM", "01:51PM - 02:40PM", "02:41PM - 03:30PM"]
    
    
    // Y7 Time Table
    static var Y7AString = [/* day A */["Science", "Humanities", "Morning Break", "English/Maths A", "Music", "Chinese", "Lunch Time", "D&T", "English/Maths B"], /* day B */["Community Period", "Chinese", "Morning Break", "English/Maths A", "Science", "Art", "Lunch Time", "Humanities", "English/Maths B"], /* day C */["English/Maths A", "Music", "Morning Break", "Chinese", "English/Maths B", "Humanities", "Lunch Time", "Physical Education", "Computing"], /* day D */["Science", "English/Maths A", "Morning Break", "D&T", "Art", "Computing", "Lunch Time", "English/Maths B", "Chinese"], /* day E */["English/Maths A", "Physical Education", "Morning Break", "Humanities", "Chinese", "Character Education", "Lunch Time", "English/Maths B", "Science"], /* day F */["Chinese Studies", "English/Maths A", "Morning Break", "Physical Education", "Science", "English/Maths B", "Lunch Time", "Chinese", "Humanities"]]
    static var Y7AActual: [[Subject]] = [[]]
    
    static let Y7BString = [/* day A */["Physical Education", "Humanities", "Morning Break", "English/Maths A", "Computing", "Chinese", "Lunch Time", "Music", "English/Maths B"], /* day B */["Community Period", "Chinese", "Morning Break", "English/Maths A", "Science", "D&T", "Lunch Time", "Humanities", "English/Maths B"], /* day C */["English/Maths A", "Science", "Morning Break", "Chinese", "English/Maths B", "Computing", "Lunch Time", "Physical Education", "Art"], /* day D */["Science", "English/Maths A", "Morning Break", "Music", "Physical Education", "Humanities", "Lunch Time", "English/Maths B", "Chinese"], /* day E */["English/Maths A", "D&T", "Morning Break", "Humanities", "Chinese", "Art", "Lunch Time", "English/Maths B", "Science"], /* day F */["Chinese Studies", "English/Maths A", "Morning Break", "Character Education", "Science", "English/Maths B", "Lunch Time", "Chinese", "Humanities"]]
    static var Y7BActual: [[Subject]] = [[]]
    
    //
    static let Y7CString = [/* day A */["Art", "Physical Education", "Morning Break", "English/Maths A", "Character Education", "Chinese", "Lunch Time", "Science", "English/Maths B"], /* day B */["Community Period", "Chinese", "Morning Break", "English/Maths A", "Humanities", "Science", "Lunch Time", "D&T", "English/Maths B"], /* day C */["English/Maths A", "Humanities", "Morning Break", "Chinese", "English/Maths B", "Physical Education", "Lunch Time", "Art", "Science"], /* day D */["Humanities", "English/Maths A", "Morning Break", "Computing", "Science", "D&T", "Lunch Time", "English/Maths B", "Chinese"], /* day E */["English/Maths A", "Music", "Morning Break", "Computing", "Chinese", "Science", "Lunch Time", "English/Maths B", "Humanities"], /* day F */["Chinese Studies", "English/Maths A", "Morning Break", "Music", "Humanities", "English/Maths B", "Lunch Time", "Chinese", "Physical Education"]]
    static var Y7CActual: [[Subject]] = [[]]
    
    static let Y7DString = [/* day A */["Humanities", "Computing", "Morning Break", "English/Maths A", "Physical Education", "Chinese", "Lunch Time", "Science", "English/Maths B"], /* day B */["Community Period", "Chinese", "Morning Break", "English/Maths A", "Humanities", "Science", "Lunch Time", "Music", "English/Maths B"], /* day C */["English/Maths A", "Humanities", "Morning Break", "Chinese", "English/Maths B", "Physical Education", "Lunch Time", "D&T", "Science"], /* day D */["Humanities", "English/Maths A", "Morning Break", "D&T", "Science", "Art", "Lunch Time", "English/Maths B", "Chinese"], /* day E */["English/Maths A", "Character Education", "Morning Break", "Music", "Chinese", "Science", "Lunch Time", "English/Maths B", "Humanities"], /* day F */["Chinese Studies", "English/Maths A", "Morning Break", "Art", "Computing", "English/Maths B", "Lunch Time", "Chinese", "Physical Educaton"]]
    static var Y7DActual: [[Subject]] = [[]]
    
    static let Y7EString = [/* day A */["Science", "D&T", "Morning Break", "English/Maths A", "Humanities", "Chinese", "Lunch Time", "Physical Education", "English/Maths B"], /* day B */["Community Period", "Chinese", "Morning Break", "English/Maths A", "Science", "D&T", "Lunch Time", "Art", "English/Maths B"], /* day C */["English/Maths A", "Science", "Morning Break", "Chinese", "English/Maths B", "Character Education", "Lunch Time", "Humanities", "Physical Education"], /* day D */["Science", "English/Maths A", "Morning Break", "Humanities", "Physical Education", "Music", "Lunch Time", "English/Maths B", "Chinese"], /* day E */["English/Maths A", "Humanities", "Morning Break", "Art", "Chinese", "English Intensive Programme", "Lunch Time", "English/Maths B", "Science"], /* day F */["Chinese Studies", "English/Maths A", "Morning Break", "Humanities", "Music", "English/Maths B", "Lunch Time", "Chinese", "Computing"]]
    static var Y7EActual: [[Subject]] = [[]]
    
    // Y8 Time Table
    static let Y8AString = [/* day A */["English/Maths A", "English/Maths B", "Morning Break", "Music", "Humanities", "Chinese", "Lunch Time", "Art", "Science"], /* day B */["Physical Education", "Chinese", "Morning Break", "Character Education", "English/Maths A", "Computing", "Lunch Time", "English/Maths B", "Science"], /* day C */["Science", "English/Maths A", "Morning Break", "Chinese", "Physical Education", "English/Maths B", "Lunch Time", "Humanities", "D&T"], /* day D */["English/Maths A", "Physical Education", "Morning Break", "Humanities", "D&T", "English/Maths B", "Lunch Time", "Community Period", "Chinese"], /* day E */["Science", "Humanities", "Morning Break", "English/Maths A", "Chinese", "Computing", "Lunch Time", "Music", "English/Maths B"], /* day F */["Chinese Studies", "Science", "Morning Break", "Humanities", "English/Maths A", "Art", "Lunch Time", "Chinese", "English/Maths B"]]
    static var Y8AActual: [[Subject]] = [[]]
    
    static let Y8BString = [/* day A */["English/Maths A", "English/Maths B", "Morning Break", "Art", "Science", "Chinese", "Lunch Time", "Physical Education", "Music"], /* day B */["Computing", "Chinese", "Morning Break", "Humanities", "English/Maths A", "D&T", "Lunch Time", "English/Maths B", "Music"], /* day C */["Computing", "English/Maths A", "Morning Break", "Chinese", "Humanities", "English/Maths B", "Lunch Time", "Science", "Physical Education"], /* day D */["English/Maths A", "Humanities", "Morning Break", "Science", "D&T", "English/Maths B", "Lunch Time", "Community Period", "Chinese"], /* day E */["Art", "Science", "Morning Break", "English/Maths A", "Chinese", "Physical Education", "Lunch Time", "Humanities", "English/Maths B"], /* day F */["Chinese Studies", "Character Education", "Morning Break", "Science", "English/Maths A", "Humanities", "Lunch Time", "Chinese", "English/Maths B"]]
    static var Y8BActual: [[Subject]] = [[]]
    
    static let Y8CString = [/* day A */["English/Maths A", "English/Maths B", "Morning Break", "Humanities", "Science", "Chinese", "Lunch Time", "Computing", "Art"], /* day B */["Physical Education", "Chinese", "Morning Break", "Music", "English/Maths A", "Humanities", "Lunch Time", "English/Maths B", "Character Education"], /* day C */["Physical Education", "English/Maths A", "Morning Break", "Chinese", "Humanities", "English/Maths B", "Lunch Time", "Science", "D&T"], /* day D */["English/Maths A", "D&T", "Morning Break", "Science", "Computing", "English/Maths B", "Lunch Time", "Community Period", "Chinese"], /* day E */["Humanities", "Science", "Morning Break", "English/Maths A", "Chinese", "Physical Education", "Lunch Time", "Art", "English/Maths B"], /* day F */["Chinese Studies", "Humanities", "Morning Break", "Science", "English/Maths A", "Music", "Lunch Time", "Chinese", "English/Maths B"]]
    static var Y8CActual: [[Subject]] = [[]]
    
    static let Y8DString = [/* day A */["English/Maths A", "English/Maths B", "Morning Break", "Character Education", "Humanities", "Chinese", "Lunch Time", "D&T", "Science"], /* day B */["Humanities", "Chinese", "Morning Break", "Computing", "English/Maths A", "Physical Education", "Lunch Time", "English/Maths B", "Music"], /* day C */["Art", "English/Maths A", "Morning Break", "Chinese", "Science", "English/Maths B", "Lunch Time", "Computing", "Music"], /* day D */["English/Maths A", "Science", "Morning Break", "Humanities", "Physical Education", "English/Maths B", "Lunch Time", "Community Period", "Chinese"], /* day E */["Physical Education", "Humanities", "Morning Break", "English/Maths A", "Chinese", "D&T", "Lunch Time", "Science", "English/Maths B"], /* day F */["Chinese Studies", "Art", "Morning Break", "Humanities", "English/Maths A", "Science", "Lunch Time", "Chinese", "English/Maths B"]]
    static var Y8DActual: [[Subject]] = [[]]

    // Y9 Time Table
    static let Y9AString = [/* day A */["Physical Education", "Physical Education", "Morning Break", "English/Maths A", "Chinese", "English/Maths B", "Lunch Time", "Chinese Studies", "Community Period"], /* day B */["Chinese", "English/Maths A", "Morning Break", "Art", "Art", "Science", "Lunch Time", "Music", "English/Maths B"], /* day C */["English/Maths A", "Computing", "Morning Break", "English/Maths B", "History", "Geography", "Lunch Time", "Chinese", "Science"], /* day D */["Drama", "Drama", "Morning Break", "Chinese", "Science", "History", "Lunch Time", "English/Maths A", "English/Maths B"], /* day E */["English/Maths A", "Chinese", "Morning Break", "Computing", "English/Maths B", "Science", "Lunch Time", "Character Education", "Music"], /* day F */["Science", "English/Maths A", "Morning Break", "Chinese", "D&T", "D&T", "Lunch Time", "English/Maths B", "Geography"]]
    static var Y9AActual: [[Subject]] = [[]]
    
    static let Y9BString = [/* day A */["Drama", "Drama", "Morning Break", "English/Maths A", "Chinese", "English/Maths B", "Lunch Time", "Chinese Studies", "Community Period"], /* day B */["Chinese", "English/Maths A", "Morning Break", "Computing", "History", "Science", "Lunch Time", "Geography", "English/Maths B"], /* day C */["English/Maths A", "Music", "Morning Break", "English/Maths B", "Art", "Art", "Lunch Time", "Chinese", "Science"], /* day D */["Physical Education", "Physical Education", "Morning Break", "Chinese", "Science", "Character Education", "Lunch Time", "English/Maths A", "English/Maths B"], /* day E */["English/Maths A", "Chinese", "Morning Break", "History", "English/Maths B", "Science", "Lunch Time", "D&T", "D&T"], /* day F */["Science", "English/Maths A", "Morning Break", "Chinese", "Geography", "Music", "Lunch Time", "English/Maths B", "Computing"]]
    static var Y9BActual: [[Subject]] = [[]]
    
    static let Y9CString = [/* day A */["Computing", "Science", "Morning Break", "English/Maths A", "Chinese", "English/Maths B", "Lunch Time", "Chinese Studies", "Community Period"], /* day B */["Chinese", "English/Maths A", "Morning Break", "Drama", "Drama", "Music", "Lunch Time", "Science", "English/Maths B"], /* day C */["English/Maths A", "Science", "Morning Break", "English/Maths B", "D&T", "D&T", "Lunch Time", "Chinese", "History"], /* day D */["Art", "Art", "Morning Break", "Chinese", "History", "Geography", "Lunch Time", "English/Maths A", "English/Maths B"], /* day E */["English/Maths A", "Chinese", "Morning Break", "Science", "English/Maths B", "Music", "Lunch Time", "Physical Education", "Physical Education"], /* day F */["Computing", "English/Maths A", "Morning Break", "Chinese", "Character Education", "Geography", "Lunch Time", "English/Maths B", "Science"]]
    static var Y9CActual: [[Subject]] = [[]]

    static let Y9DString = [/* day A */["D&T", "D&T", "Morning Break", "English/Maths A", "Chinese", "English/Maths B", "Lunch Time", "Chinese Studies", "Community Period"], /* day B */["Chinese", "English/Maths A", "Morning Break", "Physical Education", "Physical Education", "Geography", "Lunch Time", "Science", "English/Maths B"], /* day C */["English/Maths A", "Science", "Morning Break", "English/Maths B", "Drama", "Drama", "Lunch Time", "Chinese", "Geography"], /* day D */["Computing", "Character Education", "Morning Break", "Chinese", "Music", "Science", "Lunch Time", "English/Maths A", "English/Maths B"], /* day E */["English/Maths A", "Chinese", "Morning Break", "Science", "English/Maths B", "History", "Lunch Time", "Music", "Computing"], /* day F */["Science", "English/Maths A", "Morning Break", "Chinese", "Art", "Art", "Lunch Time", "English/Maths B", "History"]]
    static var Y9DActual: [[Subject]] = [[]]
    
    
    // IGCSE Time Table
    // Common arrays
    static let noElectiveArray = [""]
    
    // Y10 3 sets of subject choices
    static let electiveArrayIG1Y10 = ["Business Studies 1", "Economics 1", "History", "DT GP", "Visual Art 1", "Geography", "Enterprise"]
    
    static let electiveArrayIG2Y10 = ["Business Studies 2", "Computer Science", "Economics 2", "Geography", "Physical Education", "Visual Art 2"]
    
    static let electiveArrayIG3Y10 = ["Business Studies 3", "Drama", "DT RM", "Economics 3", "History", "Music"]
    
    static var Y10AString = [/* day A */["English/Maths", "Chinese", "Morning Break", "Global Perspectives", "Science", "E2", "Lunch Time", "English/Maths", "E3"], /* day B */["Science", "E3", "Morning Break", "E1", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "UGO"], /* day C */["Character Education", "Global Perspectives", "Morning Break", "E1", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E3", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Physical Education", "E2"], /* day E */["Physical Education", "Science", "Morning Break", "Global Perspectives", "E3", "English/Maths", "Lunch Time", "E1", "English/Maths"], /* day F */["Community Period", "Global Perspectives", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E1", "Chinese"]]
    static let Y10ARaw = [/* day A */["English/Maths", "Chinese", "Morning Break", "Global Perspectives", "Science", "E2", "Lunch Time", "English/Maths", "E3"], /* day B */["Science", "E3", "Morning Break", "E1", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "UGO"], /* day C */["Character Education", "Global Perspectives", "Morning Break", "E1", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E3", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Physical Education", "E2"], /* day E */["Physical Education", "Science", "Morning Break", "Global Perspectives", "E3", "English/Maths", "Lunch Time", "E1", "English/Maths"], /* day F */["Community Period", "Global Perspectives", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E1", "Chinese"]]
    static var Y10AActual: [[Subject]] = [[]]
    
    static var Y10BString = [/* day A */["English/Maths", "Chinese", "Morning Break", "Global Perspectives", "Science", "E2", "Lunch Time", "English/Maths", "E3"], /* day B */["Science", "E3", "Morning Break", "E1", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "Physical Education"], /* day C */["Global Perspectives", "Physical Education", "Morning Break", "E1", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E3", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Character Education", "E2"], /* day E */["Global Perspectives", "Science", "Morning Break", "UGO", "E3", "English/Maths", "Lunch Time", "E1", "English/Maths"], /* day F */["Community Period", "Global Perspectives", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E1", "Chinese"]]
    static let Y10BRaw = [/* day A */["English/Maths", "Chinese", "Morning Break", "Global Perspectives", "Science", "E2", "Lunch Time", "English/Maths", "E3"], /* day B */["Science", "E3", "Morning Break", "E1", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "Physical Education"], /* day C */["Global Perspectives", "Physical Education", "Morning Break", "E1", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E3", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Character Education", "E2"], /* day E */["Global Perspectives", "Science", "Morning Break", "UGO", "E3", "English/Maths", "Lunch Time", "E1", "English/Maths"], /* day F */["Community Period", "Global Perspectives", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E1", "Chinese"]]
    static var Y10BActual: [[Subject]] = [[]]
    
    static var Y10CString = [/* day A */["English/Maths", "Chinese", "Morning Break", "Physical Education", "Science", "E2", "Lunch Time", "English/Maths", "E1"], /* day B */["Science", "E1", "Morning Break", "E3", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "Global Perspectives"], /* day C */["Global Perspectives", "Character Education", "Morning Break", "E3", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E1", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Global Perspectives", "E2"], /* day E */["Global Perspectives", "Science", "Morning Break", "UGO", "E1", "English/Maths", "Lunch Time", "E3", "English/Maths"], /* day F */["Community Period", "Physical Education", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E3", "Chinese"]]
    static let Y10CRaw = [/* day A */["English/Maths", "Chinese", "Morning Break", "Physical Education", "Science", "E2", "Lunch Time", "English/Maths", "E1"], /* day B */["Science", "E1", "Morning Break", "E3", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "Global Perspectives"], /* day C */["Global Perspectives", "Character Education", "Morning Break", "E3", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E1", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Global Perspectives", "E2"], /* day E */["Global Perspectives", "Science", "Morning Break", "UGO", "E1", "English/Maths", "Lunch Time", "E3", "English/Maths"], /* day F */["Community Period", "Physical Education", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E3", "Chinese"]]
    static var Y10CActual: [[Subject]] = [[]]
    
    static var Y10DString = [/* day A */["English/Maths", "Chinese", "Morning Break", "Global Perspectives", "Science", "E2", "Lunch Time", "English/Maths", "E3"], /* day B */["Science", "E3", "Morning Break", "E1", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "Physical Education"], /* day C */["Global Perspectives", "UGO", "Morning Break", "E1", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E3", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Global Perspectives", "E2"], /* day E */["Global Perspectives", "Science", "Morning Break", "Character Education", "E3", "English/Maths", "Lunch Time", "E1", "English/Maths"], /* day F */["Community Period", "Physical Education", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E1", "Chinese"]]
    static let Y10DRaw = [/* day A */["English/Maths", "Chinese", "Morning Break", "Global Perspectives", "Science", "E2", "Lunch Time", "English/Maths", "E3"], /* day B */["Science", "E3", "Morning Break", "E1", "English/Maths", "English/Maths", "Lunch Time", "Chinese", "Physical Education"], /* day C */["Global Perspectives", "UGO", "Morning Break", "E1", "E2", "Chinese", "Lunch Time", "Science", "English/Maths"], /* day D */["English/Maths", "E3", "Morning Break", "Science", "English/Maths", "Chinese", "Lunch Time", "Global Perspectives", "E2"], /* day E */["Global Perspectives", "Science", "Morning Break", "Character Education", "E3", "English/Maths", "Lunch Time", "E1", "English/Maths"], /* day F */["Community Period", "Physical Education", "Morning Break", "Science", "English/Maths", "E2", "Lunch Time", "E1", "Chinese"]]
    static var Y10DActual: [[Subject]] = [[]]
    
    // Y11
    static let electiveArrayIG1Y11 = ["Art (R.Augustin)", "Business Studies 1", "DT (GR)", "Economics 1", "Geography", "Music", "Physical Education"]
    
    static let electiveArrayIG2Y11 = ["Business Studies 2", "Computer Science", "Drama", "Economics 2", "Enterprise"]
    
    static let electiveArrayIG3Y11 = ["Art (M.Cockram)", "Business Studies 3", "DT", "Economics 3", "Geography", "History"]
    
    static var Y11AString = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "Global Perspectives", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Physical Education", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Character Education"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Global Perspectives", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["Physical Education", "E1", "Morning Break", "Global Perspectives", "Science", "UGO", "Lunch Time", "English/Maths", "E3"], /* day F */["Global Perspectives", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static let Y11ARaw = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "Global Perspectives", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Physical Education", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Character Education"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Global Perspectives", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["Physical Education", "E1", "Morning Break", "Global Perspectives", "Science", "UGO", "Lunch Time", "English/Maths", "E3"], /* day F */["Global Perspectives", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static var Y11AActual: [[Subject]] = [[]]
    
    static var Y11BString = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "Character Education", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Physical Education", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Global Perspectives"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Global Perspectives", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["UGO", "E1", "Morning Break", "Physical Education", "Science", "Global Perspectives", "Lunch Time", "English/Maths", "E3"], /* day F */["Global Perspectives", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static let Y11BRaw = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "Character Education", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Physical Education", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Global Perspectives"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Global Perspectives", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["UGO", "E1", "Morning Break", "Physical Education", "Science", "Global Perspectives", "Lunch Time", "English/Maths", "E3"], /* day F */["Global Perspectives", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static var Y11BActual: [[Subject]] = [[]]
    
    static var Y11CString = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "Global Perspectives", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Global Perspectives", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Physical Education"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Character Education", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["UGO", "E1", "Morning Break" ,"Global Perspectives", "Science", "Physical Education", "Lunch Time", "English/Maths", "E3"], /* day F */["Global Perspectives", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static let Y11CRaw = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "Global Perspectives", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Global Perspectives", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Physical Education"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Character Education", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["UGO", "E1", "Morning Break" ,"Global Perspectives", "Science", "Physical Education", "Lunch Time", "English/Maths", "E3"], /* day F */["Global Perspectives", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static var Y11CActual: [[Subject]] = [[]]
    
    static var Y11DString = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "UGO", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Global Perspectives", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Global Perspectives"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Global Perspectives", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["Character Education", "E1", "Morning Break", "Physical Education", "Science", "Global Perspectives", "Lunch Time", "English/Maths", "E3"], /* day F */["Physical Education", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static let Y11DRaw = [/* day A */["E3", "English/Maths", "Morning Break", "Chinese", "E2", "Science", "Lunch Time", "UGO", "English/Maths"], /* day B */["E3", "Science", "Morning Break", "English/Maths", "E1", "Global Perspectives", "Lunch Time", "English/Maths", "Chinese"], /* day C */["Chinese", "E3", "Morning Break", "Science", "English/Maths", "English/Maths", "Lunch Time", "E2", "Global Perspectives"], /* day D */["E2", "English/Maths", "Morning Break", "E1", "Global Perspectives", "English/Maths", "Lunch Time", "Chinese", "Science"], /* day E */["Character Education", "E1", "Morning Break", "Physical Education", "Science", "Global Perspectives", "Lunch Time", "English/Maths", "E3"], /* day F */["Physical Education", "Chinese", "Morning Break", "E1", "E2", "Community Period", "Lunch Time", "Science", "English/Maths"]]
    static var Y11DActual: [[Subject]] = [[]]
    
    
    // IB Time Table
    // Common arrays
    static let languageElectiveIB = ["Chinese", "Korean", "Self-taught"]
    
    // Y12
    static let electiveArrayIB2Y12 = ["Biology H", "Biology S", "Business Management H2", "Business Management S2", "Computer Science H", "Computer Science S", "Economics H1", "ESS S", "Physics H", "Physics S", "Sport Science H", "Sport Science S"]
    
    static let electiveArrayIB4Y12 = ["Art H", "Art S", "Business Management H1", "Business Management S1", "Chemistry H", "Chemistry S", "Psychology H", "Psychology S", "Theatre H", "Theatre S"]
    
    static let electiveArrayIB7Y12 = ["Business Management H3", "Business Management S3", "Design & Technology H", "Design & Technology S", "Economics H2", "Economics S", "Geography H", "Geography S", "History H", "History S", "Music H", "Music S"]
    
    // Only the order of compulsory subjects varies with class for y12
    static var Y12 = [/* day A */["Language", "E4", "Morning Break", "E7", "English", "English", "Lunch Time", "C0", "E2"], /* day B */["Maths", "Maths", "Morning Break", "E2", "C1", "Language", "Lunch Time", "E4", "E7"], /* day C */["E7", "C2", "Morning Break", "English", "E2", "E4", "Lunch Time", "Maths", "Language"], /* day D */["C3", "E2", "Morning Break", "Maths", "Language", "E4", "Lunch Time", "E7", "English"], /* day E */["E7", "Maths", "Morning Break", "E4", "English", "Language", "Lunch Time", "E2", "Community Period"], /* day F */["C4", "E7", "Morning Break", "Maths", "Language", "E2", "Lunch Time", "English", "E4"]]
    
    static let Y12Raw = [/* day A */["Language", "E4", "Morning Break", "E7", "English", "English", "Lunch Time", "C0", "E2"], /* day B */["Maths", "Maths", "Morning Break", "E2", "C1", "Language", "Lunch Time", "E4", "E7"], /* day C */["E7", "C2", "Morning Break", "English", "E2", "E4", "Lunch Time", "Maths", "Language"], /* day D */["C3", "E2", "Morning Break", "Maths", "Language", "E4", "Lunch Time", "E7", "English"], /* day E */["E7", "Maths", "Morning Break", "E4", "English", "Language", "Lunch Time", "E2", "Community Period"], /* day F */["C4", "E7", "Morning Break", "Maths", "Language", "E2", "Lunch Time", "English", "E4"]]
    
    // Compulsory subjects (C1, C2, C3, C4)
    static let Y12A = ["UGO", "EE", "ToK", "ToK", "CAS"]
    
    static let Y12B = ["ToK", "ToK", "EE", "CAS", "UGO"]
    
    static let Y12C = ["CAS", "ToK", "ToK", "EE", "UGO"]
    
    static let Y12D = ["ToK", "UGO", "CAS", "ToK", "EE"]
    
    static let Y12Pstudy = ["Day A - P3", "Day B - P7", "Day C - P3", "Day C - P6", "Day C - P7", "Day D - P2", "Day D - P4", "Day D - P5", "Day E - P5", "Day E - P6", "Day F - P2", "Day F - P3", "Day F - P6"]
    
    
    // Y13
    static let electiveArrayIB2Y13 = ["Art H (12b)", "Art S", "Biology H", "Biology S", "Business Management H2", "Business Management S2", "Computer Science H", "Computer Science S", "Economics H1", "ESS", "Theatre H", "Theatre S"]
    
    static let electiveArrayIB4Y13 = ["Art H (12a)", "Art S", "Business Management H1", "Business Management S1", "Chemistry H", "Chemistry S", "Design & Technology H", "Design & Technology S", "Sport Science"]
    
    static let electiveArrayIB7Y13 = ["Business Management H3", "Business Management S3", "Economics H2", "Economics S", "Geography H", "History H", "History S", "Music H", "Music S", "Physics H", "Physics S", "Psychology H", "Psychology S"]
    
    static var Y13 = [/* day A */["E4", "C0", "Morning Break", "E2", "Maths", "Maths", "Lunch Time", "E7", "Language"], /* day B */["English", "English", "Morning Break", "Language", "E4", "E7", "Lunch Time", "Community", "E2"], /* day C */["E2", "E4", "Morning Break", "Maths", "Language", "C1", "Lunch Time", "English", "E7"], /* day D */["E4", "Language", "Morning Break", "English", "E7", "C2", "Lunch Time", "E2", "Maths"], /* day E */["E2", "English", "Morning Break", "C3", "Maths", "E7", "Lunch Time", "Language", "E4"], /* day F */["E7", "E2", "Morning Break", "English", "E4", "Language", "Lunch Time", "Maths", "C4"]]
    
    static let Y13Raw = [/* day A */["E4", "C0", "Morning Break", "E2", "Maths", "Maths", "Lunch Time", "E7", "Language"], /* day B */["English", "English", "Morning Break", "Language", "E4", "E7", "Lunch Time", "Community", "E2"], /* day C */["E2", "E4", "Morning Break", "Maths", "Language", "C1", "Lunch Time", "English", "E7"], /* day D */["E4", "Language", "Morning Break", "English", "E7", "C2", "Lunch Time", "E2", "Maths"], /* day E */["E2", "English", "Morning Break", "C3", "Maths", "E7", "Lunch Time", "Language", "E4"], /* day F */["E7", "E2", "Morning Break", "English", "E4", "Language", "Lunch Time", "Maths", "C4"]]
    
    static let Y13A = ["ToK", "EE", "UCG", "CAS", "ToK"]
    
    static let Y13B = ["UCG", "CAS", "ToK", "ToK", "EE"]
    
    static let Y13C = ["EE", "UCG", "ToK", "ToK", "CAS"]
    
    static let Y13D = ["ToK", "ToK", "CAS", "EE", "UCG"]
    
    static let Y13Pstudy = ["Day A - P1", "Day A - P7", "Day B - P4", "Day B - P5", "Day C - P4", "Day D - P3", "Day D - P6", "Day D - P7", "Day E - P4", "Day F - P1", "Day F - P3", "Day F - P6"]
    
    // Mock Exam Schedule
    static let y11TestDates = [""]
    
    static let y13TestDates = ["Apr 28th", "May 1st", "May 2nd", "May 3rd", "May 4th", "May 5th", "May 8th", "May 9th", "May 10th", "May 11th", "May 12th", "May 15th", "May 16th", "May 17th", "May 18th"]
    /*
    static let y11Schedule = [["Int'l Maths (0607-12) (45m)", "Int'l Maths (0607-22) (45m)", "Int'l Maths (0607-32) (1h45m)", "Int'l Maths (0607-42) (2h15m)", "Geography (0460-13) (1h45m)"], ["History (0470-13) (2h)", "Int'l Maths (0607-52) (1h)", "Int'l Maths (0607-62) (1h30m)", "Geography (0460-23) (1h30m)"], ["First Lang Eng (0500-12) (1h45m)", "First Lang Eng (0500-22) (2h)", "Eng Second Lang (0510-12) (1h30m)", "Eng Second Lang (0510-22) (2h)", "Eng Second Lang (0511-12) (1h30m)", "Eng Second Lang (0511-22) (2h)", "Combined Science (0653-12) (45m)", "Combined Science (0653-22) (45m)", "Combined Science (0653-52) (1h30m)", "Combined Science (0653-62) (1h)", "Co-ord Science (0654-12) (45m)", "Co-ord Science (0654-22) (45m)", "Co-ord Science (0654-52) (2h)", "Co-ord Science (0654-62) (1h)"], ["History (0470-23) (2h)", "First Lang Eng (0500-32) (2h)", "Eng Second Lang (0510-32) (40m)", "Eng Second Lang (0510-42) (50m)", "Eng Second Lang (0511-32) (40m)", "Eng Second Lang (0511-42) (50m)", "GP (0457-33) (1h15m)"], ["First Lang Chinese (0509-13) (2h)", "Chinese Second Lang (0523-01) (2h)", "Comp Sci (0478-12) (1h45m)", "First Lang Chinese (0509-23) (1h15m)"], ["World Literature (0408-22) (1h15m)", "Business Studies (0450-12) (1h30m)", "Drama (0411-13) (2h30m)"], ["Economics (0455-22) (2h15m)", "Combined Science (0653-32) (1h15m)", "Combined Science (0653-42) (1h15m)", "Co-ord Science (0654-32) (2h)", "Co-ord Science (0654-42) (2h)", "Comp Sci (0478-22) (1h45m)"], ["Mandarin Chinese (0547-12) (35m)", "Mandarin Chinese (0547-42) (1h15m)", "World Literature (0408-32) (1h30m)", "Business Studies (0450-22) (1h30m)"], ["Additional Maths (0606-12) (2h)", "Additional Maths (0606-22) (2h)", "Enterprise (0454-13) (1h30m)", "History (0470-43) (1h)"], ["Geography (0460-43) (1h30m)", "D&T (0445-13) (1h15m)", "Mandarin Chinese (0547-22) (1h15m)"], ["Music (0410-13) (1h15m) (@B309)", "D&T (0445-23) (1h)", "D&T (0445-33) (1h)", "Economics (0455-12) (45m)"], ["Physical Education (0413-13) (1h45m)", "Art & Design (0400) (6h) (@Art rooms)"]]
    
    static let y11ScheduleTime = [["8:00 AM", "8:00 AM", "11:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "11:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "8:00 AM", "8:00 AM", "8:00 AM", "8:00 AM", "8:00 AM", "11:00 AM", "11:00 AM", "2:00 PM", "2:00 PM", "11:00 AM", "11:00 AM", "2:00 PM", "2:00 PM"], ["8:00 AM", "11:00 AM", "11:00 AM", "11:00 AM", "11:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "8:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "11:00 AM", "11:00 AM", "11:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "8:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "11:00 AM", "2:00 PM", "2:00 PM"], ["8:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "11:00 AM", "11:00 AM", "2:00 PM"], ["8:00 AM", "All day"]]
    */
    static let y13Schedule = [["Business Management HL P1", "Business Management SL P1"], ["Business Management HL P2", "Business Management SL P2", "Biology HL P1", "Biology HL P2", "Biology SL P1", "Biology SL P2"], ["Biology HL P3", "Biology SL P3", "Economics HL P1", "Economics SL P1"], ["Economics HL P2", "Economics HL P3", "Economics SL P2", "Eng A Lit HL P1", "Eng A Lit SL P1", "Eng A Lang&Lit HL P1", "Eng A Lang&Lit SL P1", "Eng B HL P1", "Eng B SL P1"], ["Eng A Lit HL P2", "Eng A Lit SL P2", "Eng A Lang&Lit HL P2", "Eng A Lang&Lit SL P2", "Eng B HL P2", "Eng B SL P2", "Mathematical Studies SL P1", "Mathematics HL P1", "Mathematics SL P1"], ["Mathematical Studies SL P2", "Mathematics HL P2", "Mathematics SL P2", "Computer Science HL P1", "ESS SL P1"], ["Computer Science HL P2", "Computer Science HL P3", "ESS SL P2", "Language B HL P1", "Language B SL P1", "Language ab initio SL P1", "Mathematics HL P3"], ["Language B HL P2", "Language B SL P2", "Language ab initio SL P2", "History HL/SL P1", "History HL/SL P2"], ["History HL P3", "Language A Lit HL P1", "Language A Lit SL P1", "Language A Lang&Lit HL P1", "Language A Lang&Lit A SL P1"], ["Language A Lit HL P2", "Language A Lit SL P2", "Language A Lang&Lit HL P2", "Language A Lang&Lit A SL P2", "Music HL P1", "Music SL P1", "Chemistry HL P1", "Chemistry HL P2", "Chemistry SL P1", "Chemistry SL P2", "Design technology HL P1", "Design technology SL P1", "Design technology HL/SL P2"], ["Chemistry HL P3", "Chemistry SL P3", "Design technology HL P3", "Psychology HL/SL P1"], ["Psychology HL P2", "Psychology HL P3", "Psychology SL P2", "Physics HL P1", "Physics HL P2", "Physics SL P1", "Physics SL P2", "SEHS SL P1", "SEHS SL P2"], ["Physics HL P3", "Physics SL P3", "SEHS SL P3"], ["Geography HL/SL P1"], ["Geography HL P2", "Geography HL P3", "Geography SL P2"]]
    
    static let y13ScheduleTime = [["Afternoon - 2h 15m", "Afternoon - 1h 15m"], ["Morning - 2h 15m", "Morning - 1h 45m", "Afternoon - 1h", "Afternoon - 2h 15m", "Afternoon - 45m", "Afternoon - 1h 15m"], ["Morning - 1h 15m", "Morning - 1h", "Afternoon - 1h 30m", "Afternoon - 1h 30m"], ["Morning - 1h 30m", "Morning - 1h", "Morning - 1h 30m", "Afternoon - 2h", "Afternoon - 1h 30m", "Afternoon - 2h", "Afternoon - 1h 30m", "Afternoon - 1h 30m", "Afternoon - 1h 30m"], ["Morning - 2h", "Morning - 1h 30m", "Morning - 2h", "Morning - 1h 30m", "Morning - 1h 30m", "Morning - 1h 30m", "Afternoon - 1h 30m", "Afternoon -  2h", "Afternoon - 1h 30m"], ["Morning - 1h 30m", "Morning - 2h", "Morning - 1h 30m", "Afternoon - 2h 10m", "Afternoon - 1h"], ["Morning - 1h 20m", "Morning - 1h", "Morning - 2h", "Afternoon - 1h 30m", "Afternoon - 1h 30m", "Afternoon - 1h 30m", "Afternoon - 1h"], ["Morning - 1h 30m", "Morning - 1h 30m", "Morning - 1h", "Afternoon - 1h", "Afternoon - 1h 30m"], ["Morning - 2h 30m", "Afternoon - 2h", "Afternoon - 1h 30m", "Afternoon - 2h", "Afternoon - 1h 30m"], ["Morning - 2h", "Morning - 1h 30m", "Morning - 2h", "Morning - 1h 30m", "Morning - 2h 30m", "Morning - 2h", "Afternoon - 1h", "Afternoon - 2h 15m", "Afternoon - 45m", "Afternoon - 1h 15m", "Afternoon - 1h", "Afternoon - 45m", "Afternoon - 1h 30m"], ["Morning - 1h 15m", "Morning - 1h", "Morning - 1h 30m", "Afternoon - 2h"], ["Morning - 2h", "Morning - 1h", "Morning - 1h", "Afternoon - 1h", "Afternoon - 2h 15m", "Afternoon - 45m", "Afternoon - 1h 15m", "Afternoon - 45m", "Afternoon - 1h 15m"], ["Morning 1h 15m", "Morning - 1h", "Morning - 1h"], ["Afternoon - 1h 30m"], ["Morning - 2h", "Morning - 1h", "Morning - 1h 20m"]]
    
    // Teacher Email List
    static let teacherDepartmentList = ["Administration", "CAS & Counsellor", "Chinese", "Commerce (Business & Econ)", "Design & Technology)", "English", "Humanities (Geography & History)", "ICT", "Korean Language", "Learning Support", "Library and Media Services", "Mathematics", "Perfomring Art", "Physical Education", "PSHE", "Science", "University Guidance Office", "Visual Arts"]
    
    static let administrationArray = [/* Name */["Richard SWANN", "Isabel XU", "Terence DAYES", "Maria SIEVE", "Jonathan EVANS", "Andrew McNEICE", "Grace GE", "Candice CAI", "Mark MONTGOMERY"], /* Title */["Superintendent / Co-Principal", "Co-Principal", "Vice Principal", "IB Coordinator", "IGCSE Coordinator", "Lower Secondary Coordinator", "Office Administrator", "Korean Liaison", "Artist in Residence"], /* Email */["richard.swann@sh.ycef.com", "isabelx@sh.ycef.com", "terenced@sh.ycef.com", "mariasieve@sh.ycef.com", "jonathan.e@sh.ycef.com", "andrewmcn@sh.ycef.com", "gracege@sh.ycef.com", "candice.cai@sh.ycef.com", "markm@sh.ycef.com"]]
    
    static let casCounsellorArray = [/* Name */["Gemma FORDE", "Marion ROGGE"], /* Tutle */["CAS Coordinator", "Counsellor"], /* Email */["gemma.forde@sh.ycef.com", "marionr@sh.ycef.com"]]
    
    static let chineseArray = [/* Name */["Jessica CAO", "Lili CHEN", "Lily LI", "Stephnia LIU", "Penny PAN", "Jessie WANG", "Candice LU", "Xu YAO", "Phoebe DENG", "Lisa HE", "Yvonne WANG", "Molly Sun", "Shirley YUAN", "Yoland LI", "Freya HUA", "Kelly GU"], /* Title */["HoD", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""], /* Email */["jessicac@sh.ycef.com", "lily.chen@sh.ycef.com", "lily.li@sh.ycef.com", "stephnial@sh.ycef.com", "penny.pan@sh.ycef.com", "jessiew@sh.ycef.com", "candice.lu@sh.ycef.com", "xuy@sh.ycef.com", "phoebe.deng@sh.ycef.com", "lisa.he@sh.ycef.com", "yvonne.wang@sh.ycef.com", "Molly.sun@sh.ycef.com", "shirley.yuan@sh.ycef.com", "yoland.li@sh.ycef.com", "freya.hua@sh.ycef.com", "Kelly.gu@sh.ycef.com"]]
    
    static let commerceArray = [/* Name */["Edward CREIGHTON", "Nick MARSH", "Paul SMITH", "Mark HARRINGTON", "David HOWARD"], /* Title */["HoD", "", "", "", ""], /* Email */["edwardc@sh.ycef.com", "nickm@sh.ycef.com", "pauls@sh.ycef.com", "mark.harrington@sh.ycef.com", "david.howard@sh.ycef.com"]]
    
    static let dtArray = [/* Name */["David MITCHELL", "Nicci GELDER", "Gemma FORDE", "Richard MCLOUGHLIN"], /* Title */["HoD", "", "", ""], /* Email */["david.mitchell@sh.ycef.com", "Nicci.gelder@sh.ycef.com", "gemma.forde@sh.ycef.com", "Richard.mcloughlin@sh.ycef.com"]]
    
    static let englishArray = [/* Name */["Kelly SCOTTI", "Gareth TUCKER", "Gwenola COLLEU", "Waheeda KHAN", "Terry SCHAEFFER", "Virginia READE", "Spencer DAVIS", "Abe LAHMIDI", "Daniel GONZALES", "Jeremy JENSEN"], /* Title */["HoD", "", "", "", "", "", "", "", "", ""], /* Email */["kelly.scotti@sh.ycef.com", "Gareth.tucker@sh.ycef.com", "Gwenola.colleu@sh.ycef.com", "waheedak@sh.ycef.com", "terrys@sh.ycef.com", "Virginia.Reade@sh.ycef.com", "spencer.davis@sh.ycef.com", "Abe.lahmidi@sh.ycef.com", "Daniel.conzales@sh.ycef.com", "jeremy.jensen@sh.ycef.com"]]
    
    static let humanitiesArray = [/* Name */["Sally WILLIAMS", "Gary MCCRORY", "Vicky NEWNAN", "David TERRINGTON", "GEMMA armstrong", "PHILIPPA WALTER"], /* Title */["HoD", "", "", "", "", ""], /* Email */["sally.williams@sh.ycef.com", "garymc@sh.ycef.com", "vicky.newnan@sh.ycef.com", "david.terrington@sh.ycef.com", "gemma.armstrong@sh.ycef.com", "pip.walter@sh.ycef.com"]]
    
    static let ictArray = [/* Name */["David CROSBY", "Tan Liat Siang", "Kleber QUEVEDO"], /* Title */["HoD", "", ""], /* Email */["davidc@sh.ycef.com", "Liatsiang.tan@sh.ycef.com", "Kleber.chitupanta@sh.ycef.com"]]
    
    static let koreanLangArray = [/* Name */["Moon Ju PARK"], /* Title */["HoD"], /* Email */["moonjup@sh.ycef.com"]]
    
    static let learningSupportArray = [/* Name */["Carolyn LEE", "Karin ZIJLMANS"], /* Title */["EN Specialist", ""], /* Email */["carolynl@sh.ycef.com", "karinz@sh.ycef.com"]]
    
    static let libraryArray = [/* Name */["Karla CASTLE"], /* Title */["Head Librarian"], /* Email */["karla.castle@sh.ycef.com"]]
    
    static let mathsArray = [/* Name */["Julie MANY", "Peter CHONG", "Greg DOTZENKO", "Iris HUA", "Rathinasamy RAMAMURTHY", "Elise WOLLESEN", "Krishna SOMANAH", "Priya WILLIAMS"], /* Title */["HoD", "", "", "", "", "", "", ""], /* Email */["juliem@sh.ycef.com", "peter.chong@sh.ycef.com", "gregd@sh.ycef.com", "irish@sh.ycef.com", "rathinasamyr@sh.ycef.com", "elise.wollesen@sh.ycef.com", "krishnas@sh.ycef.com", "priya.williams@sh.ycef.com"]]
    
    static let performingArtArray = [/* Name */["Sally DAVIS", "Danny DAVIS", "Matthias PEITSCH", "Kathleen DURKAN", "Simon NORTON"], /* Title */["HoD", "", "", "", ""], /* Email */["sallyd@sh.ycef.com", "dannyd@sh.ycef.com", "matthiasp@sh.ycef.com", "kathleen.durkan@sh.ycef.com", "simon.norton@sh.ycef.com"]]
    
    static let peArray = [/* Name */["Geoffrey SLADE", "Ann VAN DEM BORNE", "Ryan HOTHAM"], /* Title */["HoD", "", ""], /* Email */["Geoffrey.slade@sh.ycef.com", "ann.borne@sh.ycef.com", "ryan.hotham@sh.ycef.com"]]
    
    static let psheArray = [/* Name */["Heather CAMPBELL"], /* Title */["PSHE Coordinator"], /* Email */["heather.campbell@sh.ycef.com"]]
    
    static let scienceArray = [/* Name */["Marianne VAN HEERDEN", "Henry LIU", "Lewis CHAKABA", "Christian HILDEBRANT", "Shermeen LEE", "Subathra SARAVANAN", "Curtis YOUNG", "Alison HALL"], /* Title */["HoD", "", "", "", "", "", "", ""], /* Email */["mariannev@sh.ycef.com", "henry.liu@sh.ycef.com", "lewisc@sh.ycef.com", "christianh@sh.ycef.com", "shermeenl@sh.ycef.com", "subathras@sh.ycef.com", "curtisy@sh.ycef.com", "alison.hall@sh.ycef.com"]]
    
    static let ugoArray = [/* Name */["Karel DECOCK", "John Yi LIU", "Sonja PHONGSAVANH"], /* Title */["", "", ""], /* Email */["kareld@sh.ycef.com", "john.liu@sh.ycef.com", "sonja.phongsavanh@sh.ycef.com"]]
    
    static let visualArtArray = [/* Name */["Martin COCKRAN", "Regimon AUGUSTINE", "Ambreen AHMED"], /* Title */["HoD", "", ""], /* Email */["martinc@sh.ycef.com", "Regimon.Augustine@sh.ycef.com", "ambreen.ahmed@sh.ycef.com"]]
    
    static var allNameArray:[String] = []
    
    static var allEmailArray:[String] = []
    
    static var allDepartmentArray:[String] = []
    
    static func intermediarySetUpStep(_ a: [[String]], b: Int) {
        for x in a[0] {
            allNameArray.append(x)
            allDepartmentArray.append(teacherDepartmentList[b])
        }
        for y in a[2] {
            allEmailArray.append(y)
        }
    }
    
    static func setUpAllTeacherArrays() {
        intermediarySetUpStep(administrationArray, b: 0)
        intermediarySetUpStep(casCounsellorArray, b: 1)
        intermediarySetUpStep(chineseArray, b: 2)
        intermediarySetUpStep(commerceArray, b: 3)
        intermediarySetUpStep(dtArray, b: 4)
        intermediarySetUpStep(englishArray, b: 5)
        intermediarySetUpStep(humanitiesArray, b: 6)
        intermediarySetUpStep(ictArray, b: 7)
        intermediarySetUpStep(koreanLangArray, b: 8)
        intermediarySetUpStep(learningSupportArray, b: 9)
        intermediarySetUpStep(libraryArray, b: 10)
        intermediarySetUpStep(mathsArray, b: 11)
        intermediarySetUpStep(performingArtArray, b: 12)
        intermediarySetUpStep(peArray, b: 13)
        intermediarySetUpStep(psheArray, b: 14)
        intermediarySetUpStep(scienceArray, b: 15)
        intermediarySetUpStep(ugoArray, b: 16)
        intermediarySetUpStep(visualArtArray, b: 17)
    }
    
    // holidays array
    static let holidayDatesArray = [NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-04-03") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-04-04") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-04-05") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-04-06") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-04-07") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-04-14") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-05-01") as Date), NSCalendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: NSDate(dateString: "2017-05-30") as Date)]
}
