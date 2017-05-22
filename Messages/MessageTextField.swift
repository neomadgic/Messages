//
//  MessageTextField.swift
//  Messages
//
//  Created by Vu Dang on 5/21/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageTextField: UITextField {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        createTextFieldSettings()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTextFieldSettings() {
        
        placeholder = "iMessage"
        
        // Set up the how the UITextField Looks
        layer.cornerRadius = frame.height/2
        backgroundColor = UIColor.white
        layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        layer.borderWidth = 0.5
        clipsToBounds = true
        
        // Create a slight indent so the text is not all the way left
        let spacerView = UIView(frame:CGRect(x: 0, y: 0, width: 15, height: 5))
        leftViewMode = UITextFieldViewMode.always
        leftView = spacerView
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
