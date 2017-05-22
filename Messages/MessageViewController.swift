//
//  MessageViewController.swift
//  Messages
//
//  Created by Vu Dang on 5/21/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        let messageView = MessageView()
        messageView.backgroundColor = UIColor.green
        messageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(messageView)
        messageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        messageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        messageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        messageView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
    
    }
}
