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

    @IBOutlet var saveButton: UIButton!

    @IBOutlet var textFields: [UITextField]!

    @IBOutlet var passwordValidationLabel: UILabel!

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup View
        setupView()

        // Register View Controller as Observer
        NotificationCenter.default.addObserver(self, selector: #selector(textDidChange(_:)), name: Notification.Name.UITextFieldTextDidChange, object: nil)
    }

    // MARK: - View Methods

    fileprivate func setupView() {
        // Configure Save Button
        saveButton.isEnabled = false

        // Configure Password Validation Label
        passwordValidationLabel.isHidden = true
    }

    // MARK: - Notification Handling

    @objc private func textDidChange(_ notification: Notification) {
        var formIsValid = true

        for textField in textFields {
            // Validate Text Field
            let (valid, _) = validate(textField)

            guard valid else {
                formIsValid = false
                break
            }
        }
        
        // Update Save Button
        saveButton.isEnabled = formIsValid
    }

    // MARK: - Helper Methods

    fileprivate func validate(_ textField: UITextField) -> (Bool, String?) {
        guard let text = textField.text else {
            return (false, nil)
        }

        if textField == passwordTextField {
            return (text.characters.count >= 6, "Your password is too short.")
        }

        return (text.characters.count > 0, "This field cannot be empty.")
    }

}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case firstNameTextField:
            lastNameTextField.becomeFirstResponder()
        case lastNameTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            // Validate Text Field
            let (valid, message) = validate(textField)

            if valid {
                emailTextField.becomeFirstResponder()
            }

            // Update Password Validation Label
            self.passwordValidationLabel.text = message

            // Show/Hide Password Validation Label
            UIView.animate(withDuration: 0.25, animations: {
                self.passwordValidationLabel.isHidden = valid
            })
        default:
            emailTextField.resignFirstResponder()
        }
        
        return true
    }
    
}
