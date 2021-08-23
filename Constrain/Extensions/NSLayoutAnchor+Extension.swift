//
//  NSLayoutAnchor+Extension.swift
//  Constrain
//
//  Created by Doruk Çoban on 23.08.2021.
//

import UIKit

public extension NSLayoutAnchor {

    @objc func constraint(relation: Int,
                          anchor: NSLayoutAnchor<AnchorType>,
                          constant: CGFloat = 0) -> NSLayoutConstraint {
        
        switch relation {
        case 0:
            return constraint(equalTo: anchor, constant: constant)
        case 1:
            return constraint(greaterThanOrEqualTo: anchor, constant: constant)
        default:
            return constraint(lessThanOrEqualTo: anchor, constant: constant)
        }
    }
}

public extension NSLayoutDimension {

     func constraint(relation: Int,
                     constant: CGFloat = 0) -> NSLayoutConstraint {
        
        switch relation {
        case 0:
            return constraint(equalToConstant: constant)
        case 1:
            return constraint(greaterThanOrEqualToConstant: constant)
        default:
            return constraint(lessThanOrEqualToConstant: constant)
        }
    }
}

