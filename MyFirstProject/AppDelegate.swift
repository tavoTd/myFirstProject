//
//  AppDelegate.swift
//  MyFirstProject
//
//  Created by Gustavo Tellez on 26/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    public var window: UIWindow?
    private var navigation: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let view = ExampleViewController()
        
        navigation = UINavigationController(rootViewController: view)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        return true
    }
}

