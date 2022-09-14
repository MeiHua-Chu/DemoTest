//
//  LoginViewController.swift
//  DemoTest
//
//  Created by chu hua on 2022/9/9.
//

import UIKit
//
class LoginViewController: UIViewController {

    @IBOutlet weak var accountTextField: NameTextField! {
        didSet {
            accountTextField.title = "account:"
        }
    }
    @IBOutlet weak var passwordTextField: NameTextField! {
        didSet {
            passwordTextField.title = "password:"
        }
    }
    @IBOutlet weak var loginButton: UIButton! {
        didSet {
            loginButton.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        }
    }
    
    let viewModel = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @objc func btnClick() {
        let result = viewModel.enterLogin(.init(account: accountTextField.value, password: passwordTextField.value))
        
        switch result {
        case .success(let data):
            print("success Login",data)
        case .failure(let error):
            print("error:\(error)")
        }
    }

}
