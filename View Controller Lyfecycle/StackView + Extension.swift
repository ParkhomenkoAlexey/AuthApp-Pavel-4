//
//  StackView + Extension.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 12.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
    
}
