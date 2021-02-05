//
//  LoginView.swift
//  mesa-news
//
//  Created by Jose Correa on 11/01/21.
//

import UIKit

class LoginView: UIView, ViewCodeProtocol {
    let scrollView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    } (UIScrollView())
    
    let titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        $0.font = UIFont.boldSystemFont(ofSize: 32)
        $0.textColor = Colors.primaryColor
        $0.textAlignment = .center
        $0.text = "Mesa News"
        return $0
    } (UILabel())
    
    let emailTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Email"
        return $0
    } (UITextField())
    
    let passwordTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Senha"
        $0.isSecureTextEntry = true
        return $0
    } (UITextField())
    
    let loginButton: DefaultButton = {
        let button = DefaultButton(title: "Login")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    let signupButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Cadastro", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        return $0
    } (UIButton())
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubviews()
        addConstraints()
    }
    
    func addSubviews() {
        addSubview(scrollView)
        
        scrollView.addSubview(titleLabel)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(loginButton)
        scrollView.addSubview(signupButton)
    }
    
    func addConstraints() {
        setupScrollViewConstraints()
        setupTitleLabelConstraints()
        setupEmailTextFieldConstraints()
        setupPasswordTextFieldConstraints()
        setupLoginButtonConstraints()
        setupSignupButtonConstraints()
    }
    
    private func setupScrollViewConstraints() {
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50),
            titleLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
        ])
    }
    
    private func setupEmailTextFieldConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            emailTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 70),
            emailTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            emailTextField.widthAnchor.constraint(equalTo: widthAnchor, constant: -40)
        ])
    }
    
    private func setupPasswordTextFieldConstraints() {
        NSLayoutConstraint.activate([
            passwordTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 40),
            passwordTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupLoginButtonConstraints() {
        NSLayoutConstraint.activate([
            loginButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupSignupButtonConstraints() {
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            signupButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            signupButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -30)
        ])
    }
    
}
