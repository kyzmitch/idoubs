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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func registerPressed(_ sender: Any) {
        /*
        ConnectionState_t registrationState = [mSipService getRegistrationState];
        switch (registrationState) {
        case CONN_STATE_NONE:
        case CONN_STATE_TERMINATED:
            [mSipService registerIdentity];
            break;
        case CONN_STATE_CONNECTING:
        case CONN_STATE_TERMINATING:
        case CONN_STATE_CONNECTED:
            [mSipService unRegisterIdentity];
            break;
        }
        */
    }
}

