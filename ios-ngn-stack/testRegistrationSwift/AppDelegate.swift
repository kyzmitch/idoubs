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

    var mEngine: NgnEngine!
    var mSipService: (NgnBaseService & INgnSipService)!
    var mConfigurationService: (NgnBaseService & INgnConfigurationService)!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        mEngine = NgnEngine.sharedInstance()
        mEngine.start()
        mSipService = mEngine.sipService
        mConfigurationService = mEngine.configurationService

        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
}
