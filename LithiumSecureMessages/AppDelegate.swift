//
//  AppDelegate.swift
//  LithiumSecureMessages
//
//  Created by Sean Greenan on 14/06/2018.
//  Copyright © 2018 Sean Greenan. All rights reserved.
//

import UIKit
import Smooch

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
   
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //default initialiser with vanilla display settings
        //Smooch.initWith(SKTSettings(appId: "5b3a4764864e1c00221e1415")) { (error: Error?, userInfo: [AnyHashable : Any]?) in
        
        //Initialise with some example display and appearance customisations
        Smooch.initWith(SKTSettings(appId: "5b3ab6f31fe8220022647ff0")) { (error: Error?, userInfo: [AnyHashable : Any]?) in
        let settings = SKTSettings(appId: "5b3ab6f31fe8220022647ff0")
            settings.conversationAccentColor = UIColor.cyan;
            settings.conversationStatusBarStyle = UIStatusBarStyle.default;
            
            
            UINavigationBar.appearance().barTintColor = UIColor.gray; UINavigationBar.appearance().tintColor = UIColor.white
            UINavigationBar.appearance().titleTextAttributes = [ NSAttributedStringKey.foregroundColor : UIColor.lightText]
            
            // Your code after init is complete
        }
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

