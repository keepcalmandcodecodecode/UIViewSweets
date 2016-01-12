//
//  UIView+Sweets.swift
//  Pods
//
//  Created by macmini1 on 12.01.16.
//
//

import Foundation
import UIKit

extension UIView{
    public var x:CGFloat{
        get{
            return self.frame.origin.x
        }
        
        set{
            self.frame.origin.x = newValue
        }
    }
}