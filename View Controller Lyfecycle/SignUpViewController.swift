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
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier {
        case "registerId":
            guard let dvc = segue.destination as? ProfileViewController else { return }
            dvc.firstname = firstNameTextField.text
            dvc.lastname = lastNameTextField.text
            dvc.image = photoImageView.image
        case "anotherId":
            print("123")
        default:
            break
        }
    }
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue) {
        guard let svc = segue.source as? ProfileViewController else { return }
        firstNameTextField.text = svc.firstnameTextField.text
        lastNameTextField.text = svc.lastnameTextField.text
    }
}

extension SignUpViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
        photoImageView.image = image
    }
}

