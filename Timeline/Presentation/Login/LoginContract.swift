//
//  TrackerContract.swift
//  Timeline
//
//  Created by Erick A. Montañez  on 7/22/18.
//  Copyright © 2018 Lintercat. All rights reserved.
//

import Foundation

protocol LoginView: BaseView {
    func showMainScreen()
    func runEnter()
    func runExit()
}

protocol LoginViewPresenter {
    init(view: LoginView, manager: SessionManagerProtocol)
    func start()
    func doLogin(_ credential: Credential)
    func enterMainScreen()
}
