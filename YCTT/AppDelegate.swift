//
//  AppDelegate.swift
//  School Timetable
//
//  Created by 수현 on 8/28/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift
import Parse
import SystemConfiguration

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print(Realm.Configuration.defaultConfiguration.fileURL ?? <#default value#>)
        print(UIScreen.main.bounds.height)
        let startViewController: UIViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        LunchMenu.registerSubclass()
        
        // Set up the Parse SDK
        let configuration = ParseClientConfiguration {
            $0.applicationId = "YCTT"
            $0.server = "https://yewchungtimetable-parse-alan.herokuapp.com/parse"
        }
        Parse.initialize(with: configuration)
                
        let user = User()
        
        let realm = try! Realm()
        try! realm.write() {
            realm.add(user)
        }
        let result = realm.objects(User.self).sorted(byProperty: "name", ascending: false)
        print(result)
        
        if result[0] != user && result[0].elective1 != "" {
            if (result[0].yearGroup == "12A" || result[0].yearGroup == "12B" || result[0].yearGroup == "12C" || result[0].yearGroup == "12D" || result[0].yearGroup == "13A" || result[0].yearGroup == "13B" || result[0].yearGroup == "13C" || result[0].yearGroup == "13D") && result[0].pstudy1 != "" {
                startViewController = storyboard.instantiateViewController(withIdentifier: "DaySelectNavController") as! UINavigationController
                RealmHelper.deleteUser(result[1])
            } else if result[0].yearGroup == "12A" || result[0].yearGroup == "12B" || result[0].yearGroup == "12C" || result[0].yearGroup == "12D" || result[0].yearGroup == "13A" || result[0].yearGroup == "13B" || result[0].yearGroup == "13C" || result[0].yearGroup == "13D" {
                startViewController = storyboard.instantiateViewController(withIdentifier: "PstudySelectViewController")
                RealmHelper.deleteUser(result[1])
            } else {
                startViewController = storyboard.instantiateViewController(withIdentifier: "DaySelectNavController") as! UINavigationController
                RealmHelper.deleteUser(result[1])
            }
        } else if result[0].yearGroup == "7A" || result[0].yearGroup == "7B" || result[0].yearGroup == "7C" || result[0].yearGroup == "7D" || result[0].yearGroup == "7E" || result[0].yearGroup == "8A" || result[0].yearGroup == "8B" || result[0].yearGroup == "8C" || result[0].yearGroup == "8D" || result[0].yearGroup == "9A" || result[0].yearGroup == "9B" || result[0].yearGroup == "9C" || result[0].yearGroup == "9D" {
            startViewController = storyboard.instantiateViewController(withIdentifier: "DaySelectNavController")
            RealmHelper.deleteUser(result[1])
        } else if result[0].yearGroup == "10A" || result[0].yearGroup == "10B" || result[0].yearGroup == "10C" || result[0].yearGroup == "10D" || result[0].yearGroup == "11A" || result[0].yearGroup == "11B" || result[0].yearGroup == "11C" || result[0].yearGroup == "11D" {
            startViewController = storyboard.instantiateViewController(withIdentifier: "SelectElectiveIGCSETableViewController")
            RealmHelper.deleteUser(result[1])
        } else if result[0].name != "" && result[0].elective1 == "" {
            startViewController = storyboard.instantiateViewController(withIdentifier: "SelectElectiveIBTableViewController")
            RealmHelper.deleteUser(result[1])
        } else {
            startViewController = storyboard.instantiateViewController(withIdentifier: "SetUserInfoViewController") 
        }
        
        self.window?.rootViewController = startViewController
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

