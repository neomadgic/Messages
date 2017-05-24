//
//  NameInNavigationLabel.swift
//  Messages
//
//  Created by Vu Dang on 5/24/17.
//  Copyright © 2017 Vu Dang. All rights reserved.
//

import UIKit

class NameInNavigationLabel: UILabel {

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setNavigationLabelSettings()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setNavigationLabelSettings() {
        
        textAlignment = NSTextAlignment.center
        textColor  = UIColor.black
        text = "Vu Dang"
        let defaultSize = font.pointSize
        font = UIFont.systemFont(ofSize: defaultSize, weight: UIFontWeightSemibold)
    }

}


