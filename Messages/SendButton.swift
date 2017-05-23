//
//  SendButton.swift
//  Messages
//
//  Created by Vu Dang on 5/23/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class SendButton: UIButton {

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setUpButton()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpButton() {
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 5.0
        clipsToBounds = true
        backgroundColor = UIColor.mainGreen
        setTitle("Send", for: .normal)
        setTitleColor(UIColor.white, for: .normal)
        if let defaultSize = titleLabel?.font.pointSize {
            titleLabel?.font = UIFont.systemFont(ofSize: defaultSize, weight: UIFontWeightSemibold)
        }
    }
}
