//
//  NgnSipSessionStates.h
//  ios-ngn-stack
//
//  Created by Andrei Ermoshin on 01/08/2018.
//  Copyright © 2018 Doubango Telecom. All rights reserved.
//

typedef enum ConnectionState_e{
    CONN_STATE_NONE,
    CONN_STATE_CONNECTING,
    CONN_STATE_CONNECTED,
    CONN_STATE_TERMINATING,
    CONN_STATE_TERMINATED,
}
ConnectionState_t;
