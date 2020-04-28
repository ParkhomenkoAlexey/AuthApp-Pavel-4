//
//  ProfileViewController.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 28.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    var firstname: String?
    var lastname: String?
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        firstnameTextField.text = firstname
        lastnameTextField.text = lastname
        photoImageView.image = image
    }
    
    @IBAction func changeInfoTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "backToFirstScreen", sender: nil)
    }
    
    @IBAction func shareTapped(_ sender: UIButton) {
    }
}
