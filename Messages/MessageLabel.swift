//
//  MessageLabel.swift
//  Messages
//
//  Created by Vu Dang on 5/23/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageLabel: UILabel {

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupLabelSettings()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabelSettings() {
        
        numberOfLines = 0
        backgroundColor = UIColor.blue
        textColor = UIColor.white
        layer.cornerRadius = 10.0
        clipsToBounds = true
        font = UIFont(name: "Helvetica", size: 14.0)
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: 5, left: 10, bottom: 5, right: 10)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
