//
//  AppDelegate.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window:UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        //window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.rootViewController = UINavigationController(rootViewController: UsersRouter.createModule())
        window?.makeKeyAndVisible()
        return true
    }
    
}

