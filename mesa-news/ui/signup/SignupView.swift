//
//  SignupView.swift
//  mesa-news
//
//  Created by Jose Correa on 11/01/21.
//

import UIKit

class SignupView: UIView, ViewCodeProtocol {
    let scrollView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    } (UIScrollView())
    
    let titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.textColor = Colors.primaryColor
        $0.textAlignment = .center
        $0.text = "Mesa Cadastro"
        return $0
    } (UILabel())
    
    let nameTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Nome"
        return $0
    } (UITextField())
    
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
    
    let confirmPasswordTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Confirme sua senha"
        $0.isSecureTextEntry = true
        return $0
    } (UITextField())
    
    let birthDateTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Data de nascimento (opcional)"
        $0.keyboardType = .numberPad
        return $0
    } (UITextField())
    
    let signupButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        $0.setTitle("Cadastrar", for: .normal)
        $0.setTitleColor(.white, for: .normal)
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
        scrollView.addSubview(nameTextField)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(confirmPasswordTextField)
        scrollView.addSubview(birthDateTextField)
        scrollView.addSubview(signupButton)
    }
    
    func addConstraints() {
        setupScrollViewConstraints()
        setupTitleLabelConstraints()
        setupNameTextFieldConstraints()
        setupEmailTextFieldConstraints()
        setupPasswordTextFieldConstraints()
        setupConfirmPasswordTextFieldConstraints()
        setupBirthDateTextFieldConstraints()
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
    
    private func setupNameTextFieldConstraints() {
        NSLayoutConstraint.activate([
            nameTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 70),
            nameTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            nameTextField.widthAnchor.constraint(equalTo: widthAnchor, constant: -40)
        ])
    }
    
    private func setupEmailTextFieldConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 40),
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
    
    private func setupConfirmPasswordTextFieldConstraints() {
        NSLayoutConstraint.activate([
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupBirthDateTextFieldConstraints() {
        NSLayoutConstraint.activate([
            birthDateTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            birthDateTextField.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 40),
            birthDateTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupSignupButtonConstraints() {
        NSLayoutConstraint.activate([
            signupButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            signupButton.topAnchor.constraint(equalTo: birthDateTextField.bottomAnchor, constant: 40),
            signupButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            signupButton.heightAnchor.constraint(equalToConstant: 50),
            signupButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -30)
        ])
    }
}
