//
//  MessageView.swift
//  Messages
//
//  Created by Vu Dang on 5/21/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let messageTextField = MessageTextField(frame: CGRect(x: 20.0, y: 100.0, width: 300.0, height: 20.0))
        addSubview(messageTextField)
        messageTextField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4.0).isActive = true
        messageTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0).isActive = true
        messageTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0).isActive = true
        messageTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 4.0).isActive = true
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
