//
//  MessageView.swift
//  Messages
//
//  Created by Vu Dang on 5/21/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageView: UIView {
    
    let messageTextField = MessageTextField(frame: CGRect(x: 0.0, y: 0.0, width: 0.0, height: 40.0))
    let messageTableView = MessageTableView(frame: CGRect(x: 0.0, y: 0.0, width: 0.0, height: 40.0), style: UITableViewStyle.plain)

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addMessageTextField()
        addMessageTableView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addMessageTableView() {
        
        addSubview(messageTableView)
        
        // Create TableView Constraints
        messageTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        messageTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        messageTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        messageTableView.bottomAnchor.constraint(equalTo: messageTextField.topAnchor, constant: -4.0).isActive = true
    }
    
    func addMessageTextField() {
        
        addSubview(messageTextField)
        
        //Create messageTextField Constraints
        messageTextField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4.0).isActive = true
        messageTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0).isActive = true
        messageTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0).isActive = true
        messageTextField.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
    }
}
