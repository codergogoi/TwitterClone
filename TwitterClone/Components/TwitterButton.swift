//
//  TwitterButton.swift
//  TwitterClone
//
//  Created by Gogoi on 05/06/2018.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import Foundation
import UIKit

class TwitterButton : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 15
        self.layer.backgroundColor = AppColor.navColor.cgColor
        self.setTitleColor(.white, for: .normal)
    }
    
    //custom Initilizer
    convenience init(withTitle: String, frame: CGRect){
        self.init(frame: frame)
        let titleAttr = NSAttributedString(string: withTitle, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20), NSAttributedStringKey.foregroundColor: UIColor.white])
        self.setAttributedTitle(titleAttr, for: .normal)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
 
    
}
