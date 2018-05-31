//
//  MyAwsomeButton.swift
//  RoundButtonView
//
//  Created by Mudith Chathuranga on 5/31/18.
//  Copyright © 2018 Chathuranga. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable open class MyAwsomeButton: UIButton {
    
    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
//    Int
//    CGFloat
//    Double
//    String
//    Bool
//    CGPoint
//    CGSize
//    CGRect
//    UIColor
//    UIImage
}
