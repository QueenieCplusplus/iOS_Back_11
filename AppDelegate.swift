//
//  AppDelegate.swift
//  KatesSearchInTableList
//
//  Created by KatesAndroid on 2021/1/28 PM 7:30 
//
// 此處可存放共用的常數（即唯讀變數）

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // add these two lines
    var window: UIWindow?
    // those 14 code language that patty & kate learned
    let listForAll = ["Swift", "Kotlin", "Python", "C++", "Java", "Php", "Nodejs","Go", "C","Python","Shell","MySQL","React.js","DevOps" ]
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

