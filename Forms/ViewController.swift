//
//  ViewController.swift
//  Forms
//
//  Created by Bart Jacobs on 04/05/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case firstNameTextField:
            lastNameTextField.becomeFirstResponder()
        case lastNameTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            emailTextField.becomeFirstResponder()
        default:
            emailTextField.resignFirstResponder()
        }
        
        return true
    }

}
