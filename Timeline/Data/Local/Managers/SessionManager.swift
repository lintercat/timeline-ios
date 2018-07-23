//
//  SessionManager.swift
//  Timeline
//
//  Created by Erick A. Montañez  on 7/22/18.
//  Copyright © 2018 Lintercat. All rights reserved.
//

import Foundation

class SessionManager: SessionManagerProtocol {
    func save(session: Session?) {
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(
            session?.loggedIn ?? false,
            forKey: LocalKeys.loggedIn.rawValue
        )
        
        userDefaults.set(
            session?.userName,
            forKey: LocalKeys.userName.rawValue
        )
    }
    
    func retrieve() -> Session {
        let userDefaults = UserDefaults.standard
        
        let loggedIn = userDefaults.bool(
            forKey: LocalKeys.loggedIn.rawValue
        )
        
        let userName = userDefaults.string(
            forKey: LocalKeys.userName.rawValue
            ) ?? ""
        
        return Session(loggedIn: loggedIn, userName: userName)
    }
    
    func clear() {
        UserDefaults.standard.removeObject(
            forKey: LocalKeys.loggedIn.rawValue
        )
        
        UserDefaults.standard.removeObject(
            forKey: LocalKeys.userName.rawValue
        )
    }
}
