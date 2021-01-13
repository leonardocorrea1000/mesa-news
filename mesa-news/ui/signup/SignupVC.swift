//
//  SignupVC.swift
//  mesa-news
//
//  Created by Jose Correa on 11/01/21.
//

import UIKit

class SignupVC: UIViewController {
    var myView: SignupView!
    
    
    override func loadView() {
        myView = SignupView()
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegates()
    }
    
    private func setupDelegates() {
        myView.birthDateTextField.delegate = self
    }
}

extension SignupVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //Format Date of Birth dd/MM/yyyy
        
        if textField == myView.birthDateTextField {            
            // check the chars length dd -->2 at the same time calculate the dd/MM --> 5
            if (myView.birthDateTextField.text?.count == 2) || (myView.birthDateTextField.text?.count == 5) {
                //Handle backspace being pressed
                if !(string == "") {
                    // append the text
                    myView.birthDateTextField.text = (myView.birthDateTextField.text)! + "/"
                }
            }
            // check the condition not exceed 9 chars
            return !(textField.text!.count > 9 && (string.count ) > range.length)
        }
        else {
            return true
        }
    }
}
