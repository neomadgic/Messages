//
//  MessageCell.swift
//  Messages
//
//  Created by Vu Dang on 5/23/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit
import CoreData

class MessageCell: UITableViewCell {

    func configureCell(with: NSManagedObject) {
        
        // Ensure that the TextMessage has values
        guard let message = with.value(forKey: "text") as? String, let isFromUser = with.value(forKey: "isFromUser") as? Bool else {
            return
        }
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        let messageLabel = MessageLabel(frame: CGRect.zero, isFromUser: isFromUser)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(messageLabel)
        
        messageLabel.text = message
        
        messageLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2.0).isActive = true
        messageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2.0).isActive = true
        
        if isFromUser {
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0).isActive = true
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60.0).isActive = true
        } else {
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60.0).isActive = true
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0).isActive = true
        }
        
        clearCell()
        messageLabel.superview?.bringSubview(toFront: messageLabel)
        
    }
    
    func clearCell() {
        let blankView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 25.0))
        blankView.backgroundColor = UIColor.white
        self.addSubview(blankView)
        blankView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        blankView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        blankView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        blankView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
}
