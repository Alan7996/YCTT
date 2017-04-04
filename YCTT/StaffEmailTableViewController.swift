//
//  StaffEmailTableViewController.swift
//  YCTT
//
//  Created by 수현 on 10/5/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class StaffEmailTableViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    // create a search controller
    let searchController = UISearchController(searchResultsController: nil)
    // set up arrays to contain filtered results
    var filteredNameArray:[String] = []
    var filteredEmailArray:[String] = []
    var filteredDepartmentarray:[String] = []
    // arrays to contain ALL data
    var allNameArray:[String] = []
    var allEmailArray:[String] = []
    var allDepartmentArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.title = "TEACHER EMAILS"
        
        // configure the states of search controller during different stages
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = true
        searchController.hidesNavigationBarDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        // add all data (source of searching) to following arrays
        ArrayFile.setUpAllTeacherArrays()
        allNameArray = ArrayFile.allNameArray
        allEmailArray = ArrayFile.allEmailArray
        allDepartmentArray = ArrayFile.allDepartmentArray
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // when active, return different number
        if searchController.isActive && searchController.searchBar.text != "" {
            return 1
        }
        
        return ArrayFile.teacherDepartmentList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if searchController.isActive && searchController.searchBar.text != "" {
            return "Search Results"
        }
        
        return ArrayFile.teacherDepartmentList[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredNameArray.count
        }
        
        switch section {
        case 0:
            return ArrayFile.administrationArray[0].count
        case 1:
            return ArrayFile.casCounsellorArray[0].count
        case 2:
            return ArrayFile.chineseArray[0].count
        case 3:
            return ArrayFile.commerceArray[0].count
        case 4:
            return ArrayFile.dtArray[0].count
        case 5:
            return ArrayFile.englishArray[0].count
        case 6:
            return ArrayFile.humanitiesArray[0].count
        case 7:
            return ArrayFile.ictArray[0].count
        case 8:
            return ArrayFile.koreanLangArray[0].count
        case 9:
            return ArrayFile.learningSupportArray[0].count
        case 10:
            return ArrayFile.libraryArray[0].count
        case 11:
            return ArrayFile.mathsArray[0].count
        case 12:
            return ArrayFile.performingArtArray[0].count
        case 13:
            return ArrayFile.peArray[0].count
        case 14:
            return ArrayFile.psheArray[0].count
        case 15:
            return ArrayFile.scienceArray[0].count
        case 16:
            return ArrayFile.ugoArray[0].count
        case 17:
            return ArrayFile.visualArtArray[0].count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "staffEmailTableViewCell", for: indexPath) as! StaffEmailTableViewCell
        
        let x = indexPath.row
        
        if searchController.isActive && searchController.searchBar.text != "" {
            cell.titleLabel.text = filteredDepartmentarray[x]
            cell.nameLabel.text = filteredNameArray[x]
            cell.emailLabel.text = filteredEmailArray[x]
            cell.sendEmailBtn.isHidden = true
        } else {
            cell.sendEmailBtn.isHidden = false
            
            switch indexPath.section {
            case 0:
                cell.titleLabel.text = ArrayFile.administrationArray[1][x]
                cell.nameLabel.text = ArrayFile.administrationArray[0][x]
                cell.emailLabel.text = ArrayFile.administrationArray[2][x]
            case 1:
                cell.titleLabel.text = ArrayFile.casCounsellorArray[1][x]
                cell.nameLabel.text = ArrayFile.casCounsellorArray[0][x]
                cell.emailLabel.text = ArrayFile.casCounsellorArray[2][x]
            case 2:
                cell.titleLabel.text = ArrayFile.chineseArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.chineseArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.chineseArray[2][indexPath.row]
            case 3:
                cell.titleLabel.text = ArrayFile.commerceArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.commerceArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.commerceArray[2][indexPath.row]
            case 4:
                cell.titleLabel.text = ArrayFile.dtArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.dtArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.dtArray[2][indexPath.row]
            case 5:
                cell.titleLabel.text = ArrayFile.englishArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.englishArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.englishArray[2][indexPath.row]
            case 6:
                cell.titleLabel.text = ArrayFile.humanitiesArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.humanitiesArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.humanitiesArray[2][indexPath.row]
            case 7:
                cell.titleLabel.text = ArrayFile.ictArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.ictArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.ictArray[2][indexPath.row]
            case 8:
                cell.titleLabel.text = ArrayFile.koreanLangArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.koreanLangArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.koreanLangArray[2][indexPath.row]
            case 9:
                cell.titleLabel.text = ArrayFile.learningSupportArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.learningSupportArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.learningSupportArray[2][indexPath.row]
            case 10:
                cell.titleLabel.text = ArrayFile.libraryArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.libraryArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.libraryArray[2][indexPath.row]
            case 11:
                cell.titleLabel.text = ArrayFile.mathsArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.mathsArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.mathsArray[2][indexPath.row]
            case 12:
                cell.titleLabel.text = ArrayFile.performingArtArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.performingArtArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.performingArtArray[2][indexPath.row]
            case 13:
                cell.titleLabel.text = ArrayFile.peArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.peArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.peArray[2][indexPath.row]
            case 14:
                cell.titleLabel.text = ArrayFile.psheArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.psheArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.psheArray[2][indexPath.row]
            case 15:
                cell.titleLabel.text = ArrayFile.scienceArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.scienceArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.scienceArray[2][indexPath.row]
            case 16:
                cell.titleLabel.text = ArrayFile.ugoArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.ugoArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.ugoArray[2][indexPath.row]
            case 17:
                cell.titleLabel.text = ArrayFile.visualArtArray[1][indexPath.row]
                cell.nameLabel.text = ArrayFile.visualArtArray[0][indexPath.row]
                cell.emailLabel.text = ArrayFile.visualArtArray[2][indexPath.row]
            default:
                cell.titleLabel.text = ""
                cell.nameLabel.text = ""
                cell.emailLabel.text = ""
                
            }
        }
        
        cell.sendEmailBtn.section = indexPath.section
        cell.sendEmailBtn.row = indexPath.row
        
        cell.sendEmailBtn.addTarget(self, action: #selector(StaffEmailTableViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
        
        return cell
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        // empty the filtered arrays to ensure clean search
        filteredNameArray = []
        filteredEmailArray = []
        filteredDepartmentarray = []
        var x = 0
        while x < allNameArray.count {
            // loop through allNameArray and search for any matching name with the searchText
            if allNameArray[x].lowercased().contains(searchText.lowercased()) || allNameArray[x].lowercased().contains(searchText.lowercased()) {
                // if the two matches, the items at this index from "all" arrays are added to filtered arrays
                filteredNameArray.append(allNameArray[x])
                filteredEmailArray.append(allEmailArray[x])
                filteredDepartmentarray.append(allDepartmentArray[x])
            }
            x += 1
        }
        
        tableView.reloadData()
    }
    
    func buttonClicked(_ sender: SendEmailButton) {
        let buttonSection = sender.section
        let buttonRow = sender.row
        
        var email = ""
        
        switch buttonSection {
        case 0:
            email = ArrayFile.administrationArray[2][buttonRow]
        case 1:
            email = ArrayFile.casCounsellorArray[2][buttonRow]
        case 2:
            email = ArrayFile.chineseArray[2][buttonRow]
        case 3:
            email = ArrayFile.commerceArray[2][buttonRow]
        case 4:
            email = ArrayFile.dtArray[2][buttonRow]
        case 5:
            email = ArrayFile.englishArray[2][buttonRow]
        case 6:
            email = ArrayFile.humanitiesArray[2][buttonRow]
        case 7:
            email = ArrayFile.ictArray[2][buttonRow]
        case 8:
            email = ArrayFile.koreanLangArray[2][buttonRow]
        case 9:
            email = ArrayFile.learningSupportArray[2][buttonRow]
        case 10:
            email = ArrayFile.libraryArray[2][buttonRow]
        case 11:
            email = ArrayFile.mathsArray[2][buttonRow]
        case 12:
            email = ArrayFile.performingArtArray[2][buttonRow]
        case 13:
            email = ArrayFile.peArray[2][buttonRow]
        case 14:
            email = ArrayFile.psheArray[2][buttonRow]
        case 15:
            email = ArrayFile.scienceArray[2][buttonRow]
        case 16:
            email = ArrayFile.ugoArray[2][buttonRow]
        case 17:
            email = ArrayFile.visualArtArray[2][buttonRow]
        default:
            break
        }

        let url = URL(string: "mailto:\(email)")
        UIApplication.shared.open(url!)
    }
}
// set up extension to update search results as the text is being inputted
extension StaffEmailTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
