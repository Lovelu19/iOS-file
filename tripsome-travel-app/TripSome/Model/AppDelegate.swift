//
//  AppDelegate.swift
//  TripSome
//
//  Created by AL Mustakim on 15/1/20.
//  Copyright © 2020 AL Mustakim. All rights reserved.
//

import UIKit

//@available(iOS 13.0, *)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        checkLogin()
        return true
    }
    
    func checkLogin() {
        
        
        let defaults = UserDefaults.standard
        let tokenSave = UserDefaults.standard
        
        if defaults.bool(forKey: "First Launch") == true  {
            
            defaults.set(true, forKey: "First Launch")
            TokenUrl.shared.token = UserDefaults.standard.string(forKey: "saveToken") ?? ""
            //                    tokenSave.set(signin.tt, forKey: "token save")
            //                    TokenUrl.shared.token = signin.tt
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let rootVC = storyboard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else {
                print("ViewController not found")
                return
            }
            
            let rootNC = UINavigationController(rootViewController: rootVC)
            self.window?.rootViewController = rootNC
            self.window?.makeKeyAndVisible()
            
        }
    }
  

    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

