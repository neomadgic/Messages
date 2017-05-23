//
//  MessageCell.swift
//  Messages
//
//  Created by Vu Dang on 5/23/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    func configureCell(with: String) {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        print(contentView.frame)
        
        let messageLabel = MessageLabel(frame: CGRect.zero)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(messageLabel)
        
        messageLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2.0).isActive = true
        messageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2.0).isActive = true
        messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50.0).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0).isActive = true
        //messageLabel.sizeToFit()
        
        messageLabel.text = with
        
    }
}
