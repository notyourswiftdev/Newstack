//
//  OnboardingViewController.swift
//  Newstack
//
//  Created by Aaron Cleveland on 7/21/20.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let contentVStack = CustomStackView(style: .vertical, distribution: .fillEqually, alignment: .fill)
    
    let helloLabel = CustomLabel(style: .helloLabel, text: "Hello!")
    let subLabel = CustomLabel(style: .subLabel, text: "Daily UI is a series of daily design challenges design inspiration.")
    
    let socialHStack = CustomStackView(style: .horizontal, distribution: .fillEqually, alignment: .fill)
    
    let facebookButton: UIButton = {
        let fb = UIButton()
        fb.translatesAutoresizingMaskIntoConstraints = false
        fb.setTitle("F", for: .normal)
        fb.backgroundColor = .systemBlue
        fb.layer.cornerRadius = 50
        return fb
    }()
    
    let twitterButton: UIButton = {
        let tb = UIButton()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.setTitle("T", for: .normal)
        tb.backgroundColor = .systemBlue
        tb.layer.cornerRadius = 50

        return tb
    }()
    
    let appleButton: UIButton = {
        let ab = UIButton()
        ab.translatesAutoresizingMaskIntoConstraints = false
        ab.setTitle("A", for: .normal)
        ab.backgroundColor = .systemBlue
        ab.layer.cornerRadius = 50
        return ab
    }()
    
    let fullNameVStack = CustomStackView(style: .vertical, distribution: .fill, alignment: .fill)
    
    let fullNameLabel = CustomLabel(style: .fullNameLabel, text: "Full Name")
    
    let fullNameTextField: UITextField = {
        let fnTextField = UITextField()
        fnTextField.translatesAutoresizingMaskIntoConstraints = false
        return fnTextField
    }()
    
    let emailVStack = CustomStackView(style: .vertical, distribution: .fill, alignment: .fill)
    
    let emailLabel = CustomLabel(style: .emailLabel, text: "Email Address")
    
    let emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        return emailTextField
    }()
    
    let signUpButton: UIButton = {
        let suButton = UIButton()
        suButton.translatesAutoresizingMaskIntoConstraints = false
        suButton.setTitle("Sign Up", for: .normal)
        suButton.backgroundColor = UIColor.systemOrange
        suButton.layer.cornerRadius = 15
        return suButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        subviews()
        constraints()
    }
    
}

extension OnboardingViewController {
    private func subviews() {
        contentVStack.addArrangedSubview(helloLabel)
        contentVStack.addArrangedSubview(subLabel)
        
        contentVStack.addArrangedSubview(socialHStack)
        socialHStack.addArrangedSubview(facebookButton)
        socialHStack.addArrangedSubview(twitterButton)
        socialHStack.addArrangedSubview(appleButton)
        
        contentVStack.addArrangedSubview(fullNameVStack)
        fullNameVStack.addArrangedSubview(fullNameLabel)
        fullNameVStack.addArrangedSubview(fullNameTextField)
        
        contentVStack.addArrangedSubview(emailVStack)
        emailVStack.addArrangedSubview(emailLabel)
        emailVStack.addArrangedSubview(emailTextField)
        
        contentVStack.addArrangedSubview(signUpButton)

        view.addSubview(contentVStack)
    }
    
    private func constraints() {
        NSLayoutConstraint.activate([
            contentVStack.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor),
            contentVStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            contentVStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            contentVStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
}