//
//  MockExamScheduleTableViewController.swift
//  YCTT
//
//  Created by 수현 on 2/7/17.
//  Copyright © 2017 YCIS-PX. All rights reserved.
//

import Foundation
import UIKit

class MockExamScheduleTableViewController: UITableViewController /*, UISearchBarDelegate, UISearchDisplayDelegate*/ {
    /*let searchController = UISearchController(searchResultsController: nil)
    var filteredTestNameArray:[String] = []
    var filteredTestTimeArray:[String] = []
    var allTestNameArray:[String] = []
    var allTestTimeArray:[String] = []*/
    
    var yearGroup = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.title = "EXAM SCHEDULE"
        
        /*searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = true
        searchController.hidesNavigationBarDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        allTestNameArray =
        allTestTimeArray =*/
    }
    
    override func numberOfSections(in tabeView: UITableView) -> Int {
        /*if searchController.isActive && searchController.searchBar.text != "" {
            return 1
        }*/
        if yearGroup == "11A" || yearGroup == "11B" || yearGroup == "11C" || yearGroup == "11D" {
            return ArrayFile.y11TestDates.count
        } else {
            return ArrayFile.y13TestDates.count
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        /*if searchController.isActive && searchController.searchBar.text != "" {
            return "Search Results"
        }*/
        
        if yearGroup == "11A" || yearGroup == "11B" || yearGroup == "11C" || yearGroup == "11D" {
            return ArrayFile.y11TestDates[section]
        } else {
            return ArrayFile.y13TestDates[section]
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /*if searchController.isActive && searchController.searchBar.text != "" {
            return filteredTestNameArray.count
        }*/
        
        if yearGroup == "11A" || yearGroup == "11B" || yearGroup == "11C" || yearGroup == "11D" {
            return 0//ArrayFile.y11Schedule[section].count
        } else {
            return ArrayFile.y13Schedule[section].count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mockExamScheduleTableViewCell", for: indexPath) as! MockExamScheduleTableViewCell
        /*if searchController.isActive && searchController.searchBar.text != "" {
            cell.testNameLabel.text = filteredTestNameArray[indexPath.row]
            cell.timeLabel.text = filteredTestTimeArray[indexPath.row]
        } else */
        if yearGroup == "11A" || yearGroup == "11B" || yearGroup == "11C" || yearGroup == "11D" {
            cell.testNameLabel.text = ""//ArrayFile.y11Schedule[indexPath.section][indexPath.row]
            cell.timeLabel.text = ""//ArrayFile.y11ScheduleTime[indexPath.section][indexPath.row]
        } else {
            cell.testNameLabel.text = ArrayFile.y13Schedule[indexPath.section][indexPath.row]
            cell.timeLabel.text = ArrayFile.y13ScheduleTime[indexPath.section][indexPath.row]
        }
        
        return cell
    }
    
    /*func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredTestNameArray = []
        filteredTestTimeArray = []
        
        var x = 0
        while x < allTestNameArray.count {
            if allTestNameArray[x].lowercased().contains(searchText.lowercased()) || allTestNameArray[x].lowercased().contains(searchText.lowercased()) {
                filteredTestNameArray.append(allTestNameArray[x])
                filteredTestTimeArray.append(allTestTimeArray[x])
            }
            x += 1
        }
        
        tableView.reloadData()
    }*/
}
/*extension MockExamScheduleTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}*/
