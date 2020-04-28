//
//  SignUpViewController.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 28.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.layer.cornerRadius = 50
        photoImageView.layer.borderWidth = 0.5
    }
    
    @IBAction func photoButtonPressed(_ sender: Any) {
    }
    
}

