//
//  AppDelegate.swift
//  testRegistrationSwift
//
//  Created by Andrei Ermoshin on 01/08/2018.
//  Copyright © 2018 Doubango Telecom. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    @objc private func onRegistrationEvent(_ notificaiton: Notification) {

    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // add observers
        let selector = #selector(onRegistrationEvent(_:))
        NotificationCenter.default.addObserver(self, selector: selector, name: NSNotification.Name(rawValue: kNgnRegistrationEventArgs_Name), object: nil)


        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
}
