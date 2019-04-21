//
//  CommentCell.swift
//  RNDM
//
//  Created by Stephen on 21/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var usernameTxt: UILabel!
    @IBOutlet weak var timestampTxt: UILabel!
    @IBOutlet weak var commentTxt: UILabel!
        
    func configureCell(comment: Comment) {
        usernameTxt.text = comment.username
        commentTxt.text = comment.commentTxt
        
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM, HH:mm"
        let timestamp = formatter.string(from: comment.timestamp)
        timestampTxt.text = timestamp
    }
}
