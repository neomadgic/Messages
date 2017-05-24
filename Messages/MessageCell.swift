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
        
        clearCellFromReuse()
        createMessageLabel(with: message, from: isFromUser)
    }
    
    // This function adds a white UIView to cover up reused cells from showing.
    func clearCellFromReuse() {
        
        let blankView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 25.0))
        blankView.translatesAutoresizingMaskIntoConstraints = false
        blankView.backgroundColor = UIColor.white
        self.addSubview(blankView)
        
        //create Constraints
        blankView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        blankView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        blankView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        blankView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
    func createMessageLabel(with: String, from: Bool) {
        
        let messageLabel = MessageLabel(frame: CGRect.zero, isFromUser: from)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.text = with
        addSubview(messageLabel)
        
        //Create Constraints
        messageLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2.0).isActive = true
        messageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2.0).isActive = true
        
        // Create Constraints depending on whether message is sent from User or other person
        if from == true{
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0).isActive = true
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60.0).isActive = true
        } else {
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60.0).isActive = true
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0).isActive = true
        }
    }
}
