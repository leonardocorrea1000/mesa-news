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
}
