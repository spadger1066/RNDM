//
//  UpdateCommentVC.swift
//  RNDM
//
//  Created by Stephen on 22/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit

class UpdateCommentVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var commentTxt: UITextView!
    @IBOutlet weak var updateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commentTxt.layer.cornerRadius = 10
        updateBtn.layer.cornerRadius = 10
    }

    @IBAction func updateTapped(_ sender: Any) {
    }
}
