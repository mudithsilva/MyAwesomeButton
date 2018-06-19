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
    
    @IBInspectable public var shadowColor: UIColor = UIColor.black {
        didSet {
            self.addShadow()
        }
    }
    
    @IBInspectable public var offSetWidth: Double = -1.0 {
        didSet {
            self.addShadow()
        }
    }
    
    @IBInspectable public var offSetHeight: Double = 4.0 {
        didSet {
            self.addShadow()
        }
    }
    
    @IBInspectable public var shadowOpacity: Double = 0.5 {
        didSet {
            self.addShadow()
        }
    }
    
    @IBInspectable public var addShaddow: Bool = false {
        didSet {
            self.addShadow()
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func addShadow() {
        if addShaddow {
            self.layer.masksToBounds = false
            self.layer.shadowColor = self.shadowColor.cgColor
            self.layer.shadowOpacity = Float(self.shadowOpacity)
            self.layer.shadowOffset = CGSize(width: self.offSetWidth, height: self.offSetHeight)
            self.layer.shadowRadius = 4.0
        } else {
            self.layer.shadowOpacity = 0
        }
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
