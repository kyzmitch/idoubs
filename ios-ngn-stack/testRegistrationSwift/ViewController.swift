//
//  ViewController.swift
//  testRegistrationSwift
//
//  Created by Andrei Ermoshin on 01/08/2018.
//  Copyright © 2018 Doubango Telecom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var buttonRegister: UIButton!
    @IBOutlet var labelStatus: UILabel!

    @objc private func onRegistrationEvent(_ notificaiton: Notification) {

        guard let eargs = notificaiton.object as? NgnRegistrationEventArgs else {
            return
        }

        // Current event triggered the callback
        // to get the current registration state you should use "mSipService::getRegistrationState"

        switch eargs.eventType {
        case REGISTRATION_INPROGRESS, UNREGISTRATION_INPROGRESS:
            // provisional responses
            activityIndicator.startAnimating()
        default:
            // final responses
            activityIndicator.stopAnimating()
        }

        /*

         [buttonRegister setTitle: [mSipService isRegistered] ? @"UnRegister" : @"Register" forState: UIControlStateNormal];
         labelStatus.text = eargs.sipPhrase;

         // gets the new registration state
         ConnectionState_t registrationState = [mSipService getRegistrationState];
         switch (registrationState) {
         case CONN_STATE_NONE:
         case CONN_STATE_TERMINATED:
         default:
         [buttonRegister setTitle: @"Register" forState: UIControlStateNormal];
         if(mScheduleRegistration){
         mScheduleRegistration = FALSE;
         [mSipService registerIdentity];
         }
         labelStatus.backgroundColor = [UIColor redColor];
         break;
         case CONN_STATE_CONNECTING:
         case CONN_STATE_TERMINATING:
         [buttonRegister setTitle: @"Cancel" forState: UIControlStateNormal];
         labelStatus.backgroundColor = [UIColor redColor];
         break;
         case CONN_STATE_CONNECTED:
         [buttonRegister setTitle: @"UnRegister" forState: UIControlStateNormal];
         labelStatus.backgroundColor = [UIColor greenColor];
         break;
         }
         */
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // add observers
        let selector = #selector(onRegistrationEvent(_:))
        NotificationCenter.default.addObserver(self, selector: selector, name: NSNotification.Name(rawValue: kNgnRegistrationEventArgs_Name), object: nil)
    }
}

