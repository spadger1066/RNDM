//
//  CommentCell.swift
//  RNDM
//
//  Created by Stephen on 21/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit
import Firebase

protocol CommentDelegate {
    func commentOptionsTapped(comment: Comment)
}

class CommentCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var usernameTxt: UILabel!
    @IBOutlet weak var timestampTxt: UILabel!
    @IBOutlet weak var commentTxt: UILabel!
    @IBOutlet weak var optionsMenu: UIImageView!
    
    // Variables
    private var comment: Comment!
    private var delegate: CommentDelegate?
    
    func configureCell(comment: Comment, delegate: CommentDelegate?) {
        optionsMenu.isHidden = true
        self.comment = comment
        self.delegate = delegate
        usernameTxt.text = comment.username
        commentTxt.text = comment.commentTxt
        
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM, HH:mm"
        let timestamp = formatter.string(from: comment.timestamp)
        timestampTxt.text = timestamp
        if comment.userId == Auth.auth().currentUser?.uid {
            optionsMenu.isHidden = false
            optionsMenu.isUserInteractionEnabled = true
            let tap = UITapGestureRecognizer(target: self, action: #selector(commentOptionsTapped))
            optionsMenu.addGestureRecognizer(tap)
        }
    }
    
    @objc func commentOptionsTapped() {
        delegate?.commentOptionsTapped(comment: comment)
    }
}
