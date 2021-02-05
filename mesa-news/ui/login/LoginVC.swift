//
//  LoginVC.swift
//  mesa-news
//
//  Created by Jose Correa on 11/01/21.
//

import UIKit

class LoginVC: UIViewController {
    var myView: LoginView!
    
    
    override func loadView() {
        myView = LoginView()
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    private func setupButtons() {
        myView.loginButton.onTouch = loginButtonTapped
    }
    
}

// MARK: Actions
extension LoginVC {
    private func loginButtonTapped() {
        myView.loginButton.inLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.myView.loginButton.inLoading = false
        }
        
    }
}
