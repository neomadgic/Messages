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
        //setupLabelSettings()
    }
    
    convenience init(frame: CGRect, isFromUser: Bool) {
        self.init(frame:frame)
        setupLabelSettings(with: isFromUser)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabelSettings(with: Bool) {
        
        numberOfLines = 0
        //backgroundColor = UIColor.mainBlue
        //textColor = UIColor.white
        layer.cornerRadius = 8.0
        clipsToBounds = true
        font = UIFont(name: "Helvetica", size: 16.0)
        //textAlignment = .right
        
        if with == true {
            backgroundColor = UIColor.mainBlue
            textColor = UIColor.white
            textAlignment = .right
        } else {
            backgroundColor = UIColor.textBackgroundGray
            textColor = UIColor.black
            textAlignment = .left
        }
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
