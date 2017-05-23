//
//  MessageTableView.swift
//  Messages
//
//  Created by Vu Dang on 5/22/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class MessageTableView: UITableView {
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.purple
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
