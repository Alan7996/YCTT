//
//  AllTimeTableCollectionViewController.swift
//  School Timetable
//
//  Created by 수현 on 8/30/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import RealmSwift

class AllTimeTableCollectionViewController: UICollectionViewController {
    let result = RealmHelper.retrieveUsers()
    var userClass = ""
    var subjectsArray: [String] = []
    var subjectsArray2: [Subject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.title = "ALL TIMETABLE"
        
        userClass = result[0].yearGroup
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        if userClass == "7A" || userClass == "7B" || userClass == "7C" || userClass == "7D" || userClass == "7E" || userClass == "8A" || userClass == "8B" || userClass == "8C" || userClass == "8D" || userClass == "9A" || userClass == "9B" || userClass == "9C" || userClass == "9D" || userClass == "10A" || userClass == "10B" || userClass == "10C" || userClass == "10D" || userClass == "11A" || userClass == "11B" || userClass == "11C" || userClass == "11D" {
            return ArrayFile.Y7AString.count
            
        } else if userClass == "12A" || userClass == "12B" || userClass == "12C" || userClass == "12D" || userClass == "13A" || userClass == "13B" || userClass == "13C" || userClass == "13D" {
            return ArrayFile.Y13.count
        } else {
            return 1
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ArrayFile.timeArray.count + 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "allTimeTableCell", for: indexPath) as! AllTimeTableCollectionViewCell
        
        if indexPath.row == 0 {
            cell.timeLabel.text = ""
            cell.subjectLabel.text = "DAY " + ArrayFile.dayArray[indexPath.section]
            cell.subjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 20.0)
            cell.subjectLabel.textColor = UIColor.white
            cell.roomLabel.text = ""
            cell.backgroundColor = UIColor(red: 242.0/255.0, green: 129.0/255.0, blue: 55.0/255.0, alpha: 1.0)
            cell.layer.borderWidth = 0
            cell.whiteImage.isHidden = true
        } else {
            let timeText = ArrayFile.timeArray[indexPath.row - 1]
            cell.timeLabel.text = timeText.substring(with: Range<String.Index>(timeText.characters.index(timeText.startIndex, offsetBy: 0) ..< timeText.characters.index(timeText.endIndex, offsetBy: -10)))
            if userClass == "7A" {
                cell.subjectLabel.text = ArrayFile.Y7AActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y7AActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "7B" {
                cell.subjectLabel.text = ArrayFile.Y7BActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y7BActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "7C" {
                cell.subjectLabel.text = ArrayFile.Y7CActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y7CActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "7D" {
                cell.subjectLabel.text = ArrayFile.Y7DActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y7DActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "7E" {
                cell.subjectLabel.text = ArrayFile.Y7EActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y7EActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "8A" {
                cell.subjectLabel.text = ArrayFile.Y8AActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y8AActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "8B" {
                cell.subjectLabel.text = ArrayFile.Y8BActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y8BActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "8C" {
                cell.subjectLabel.text = ArrayFile.Y8CActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y8CActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "8D" {
                cell.subjectLabel.text = ArrayFile.Y8DActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y8DActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "9A" {
                cell.subjectLabel.text = ArrayFile.Y9AActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y9AActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "9B" {
                cell.subjectLabel.text = ArrayFile.Y9BActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y9BActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "9C" {
                cell.subjectLabel.text = ArrayFile.Y9CActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y9CActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "9D" {
                cell.subjectLabel.text = ArrayFile.Y9DActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y9DActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "10A" {
                cell.subjectLabel.text = ArrayFile.Y10AActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y10AActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "10B" {
                cell.subjectLabel.text = ArrayFile.Y10BActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y10BActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "10C" {
                cell.subjectLabel.text = ArrayFile.Y10CActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y10CActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "10D" {
                cell.subjectLabel.text = ArrayFile.Y10DActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y10DActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "11A" {
                cell.subjectLabel.text = ArrayFile.Y11AActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y11AActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "11B" {
                cell.subjectLabel.text = ArrayFile.Y11BActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y11BActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "11C" {
                cell.subjectLabel.text = ArrayFile.Y11CActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y11CActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "11D" {
                cell.subjectLabel.text = ArrayFile.Y11DActual[indexPath.section][indexPath.row - 1].name
                cell.roomLabel.text = ArrayFile.Y11DActual[indexPath.section][indexPath.row - 1].roomNumber
            } else if userClass == "12A" || userClass == "12B" || userClass == "12C" || userClass == "12D" {
                cell.subjectLabel.text = ArrayFile.Y12[indexPath.section][indexPath.row - 1]
                cell.roomLabel.text = ""
            } else if userClass == "13A" || userClass == "13B" || userClass == "13C" || userClass == "13D" {
                cell.subjectLabel.text = ArrayFile.Y13[indexPath.section][indexPath.row - 1]
                cell.roomLabel.text = ""
            }
            
            cell.subjectLabel.font = UIFont(name: "RobotoSlab-Regular", size: 16.0)
            cell.layer.borderColor = UIColor.white.cgColor
            cell.layer.borderWidth = 2
            cell.backgroundColor = UIColor.clear
            cell.whiteImage.isHidden = false
        }
        
        cell.layer.cornerRadius = 10
        
        return cell
    }
}
