//
//  TrackerViewController.swift
//  Timeline
//
//  Created by Erick A. Montañez  on 7/22/18.
//  Copyright © 2018 Lintercat. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var emailFieldLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordFieldLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var launchButton: UIButton!
    @IBOutlet weak var forgottenPasswordButton: UILabel!

    // MARK: - Controller
    
    var presenter: LoginViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginPresenter(view: self, manager: SessionManager())
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        makeInvisible(
            logoImage,
            emailFieldLabel,
            emailTextField,
            passwordFieldLabel,
            passwordTextField,
            launchButton,
            forgottenPasswordButton
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.start()
    }
    
    // MARK: - Actions
    
    @IBAction func didTapLaunchButton(_ sender: UIButton) {
        presenter.enterMainScreen()
    }
}

extension LoginViewController: LoginView {
    func showMainScreen() {
        setMainFlow(to: .main)
    }

    func runEnter() {
        makeVisible(
            logoImage,
            emailFieldLabel,
            emailTextField,
            passwordFieldLabel,
            passwordTextField,
            launchButton,
            forgottenPasswordButton
        )
    }
    
    func runExit() {
        debugPrint("[Warning] Not implemented: LoginViewController > runEnterAnimations()")
        self.presenter.enterMainScreen()
    }
}
