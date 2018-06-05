//
//  GenericExtensions.swift
//  TwitterClone
//
//  Created by Gogoi on 05/06/2018.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addConstraintWithFormat(format: String, views: UIView...) {
        
        var viewDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewDictionary))
    }
    
}
