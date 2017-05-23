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
        
        backgroundColor = UIColor.purple
        
        setTableViewSettings()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTableViewSettings() {
        
        translatesAutoresizingMaskIntoConstraints = false
        separatorStyle = .none
    }
}
