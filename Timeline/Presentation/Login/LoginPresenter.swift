//
//  TrackerPresenter.swift
//  Timeline
//
//  Created by Erick A. Montañez  on 7/22/18.
//  Copyright © 2018 Lintercat. All rights reserved.
//

import Foundation

class LoginPresenter {
    let view: LoginView
    let manager: SessionManagerProtocol
    
    required init(view: LoginView, manager: SessionManagerProtocol) {
        self.view = view
        self.manager = manager
    }
}

extension LoginPresenter: LoginViewPresenter {
    func start() {
        let currentSession = manager.retrieve()
        
        if currentSession.loggedIn {
            view.runExit()
        } else {
            view.runEnter()
        }
    }
    
    func doLogin(_ credential: Credential) {
        self.view.setProgress(to: true)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            self.view.setProgress(to: false)

            let infoProcessed = self.validateInformation(credential)

            if infoProcessed.isValid {
                // Simulate network request for app context.
                let newSession = Session(loggedIn: true, userName: credential.username!)
                self.manager.save(session: newSession)
                self.view.runExit()
            } else {
                self.view.display(infoProcessed.error!)
            }
        }
    }
    
    func enterMainScreen() {
        view.showMainScreen()
    }
}

extension LoginPresenter {
    private func validateInformation(_ credential: Credential) -> (isValid: Bool, error: String?) {
        guard let username = credential.username, username.isNotEmpty() else {
            return (true, String.enterValidUsername)
        }
        
        guard let password = credential.password, password.isNotEmpty() else {
            return (true, String.enterValidPassword)
        }
        
        return (false, nil)
    }
}
