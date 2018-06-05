//
//  TwitterTextField.swift
//  TwitterClone
//
//  Created by Gogoi on 05/06/2018.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import Foundation
import UIKit

class TwitterTextField : UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 15
        self.layer.backgroundColor = UIColor(red: 218/255, green: 225/255, blue: 230/255, alpha: 1).cgColor
        self.textColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




