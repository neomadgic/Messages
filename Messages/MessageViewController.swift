//
//  MessageViewController.swift
//  Messages
//
//  Created by Vu Dang on 5/21/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let messageView = MessageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        addKeyboardNotifications()
        createMessageView()
        messageView.messageTableView.delegate = self
        messageView.messageTableView.dataSource = self
        messageView.messageTableView.register(MessageCell.self, forCellReuseIdentifier: "MessageCell")
        
        messageView.sendButton.addTarget(self, action: #selector(onSendPressed), for: .touchUpInside)
    }

    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardNotifications()
    }
    
    func createMessageView() {
        
        self.view.addSubview(messageView)
        messageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        messageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        messageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    }
    
    //Add NS Notifications to shift the screen up when keyboard is shown
    func addKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(MessageViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(MessageViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    // Remove NS Notifications
    func removeKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    //Move View up when keyboard shows
    func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0.0{
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    // Move view down when keyboard shows
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0.0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    func onSendPressed() {
        print("WE MADE IT")
    }
}

