//
//  CreateUserVCViewController.swift
//  RNDM
//
//  Created by Stephen on 18/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit

class CreateUserVC: UIViewController {

    // Outlets
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn.layer.cornerRadius = 10
        cancelBtn.layer.cornerRadius = 10
    }

    @IBAction func createTapped(_ sender: Any) {
    }

    @IBAction func cancelTapped(_ sender: Any) {
    }
}
