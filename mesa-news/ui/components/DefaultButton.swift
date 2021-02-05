//
//  DefaultButton.swift
//  mesa-news
//
//  Created by Jose Correa on 03/02/21.
//

import Foundation
import UIKit

class DefaultButton: UIView, ViewCodeProtocol {
    private var buttonTitle: String
    private var buttonColor: UIColor
    private var _inLoading: Bool = false
    var onTouch: (() -> ())? = nil
    
    var inLoading: Bool {
        get {
            return _inLoading
        }
        
        set {
            self._inLoading = newValue
            
            if newValue {
                setStateLoading()
            } else {
                button.isUserInteractionEnabled = true
                setupButton()
                hideActivityIndicator()
            }
        }
    }
    
    let button: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    } (UIButton())
    
    init(title: String, color: UIColor = Colors.primaryDark, onTouch: (() -> ())? = nil) {
        self.buttonTitle = title
        self.buttonColor = color
        self.onTouch = onTouch
        super.init(frame: .zero)
        setupView()
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubviews()
        addConstraints()
    }
    
    func addSubviews() {
        addSubview(button)
    }
    
    func addConstraints() {
        setupButtonConstraints()
    }
    
    private func setupButtonConstraints() {
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

// MARK: Actions
extension DefaultButton {
    
    private func setStateLoading() {
        button.isUserInteractionEnabled = false
        button.setTitle("", for: .normal)
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = .white
        addSubview(activityIndicator)
        DispatchQueue.main.async { [weak self] in
            if let center = self?.button.center {
                activityIndicator.center = center
                activityIndicator.startAnimating()
            }
        }
    }
    
    private func setupButton() {
        button.setTitle(buttonTitle, for: .normal)
        button.backgroundColor = buttonColor
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        button.clickAnimation()
        onTouch?()
    }
    
}
