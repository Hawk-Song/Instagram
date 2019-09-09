//
//  UIColor+Extension.swift
//  InstagramFireBase
//
//  Created by Hawk Song on 9/8/19.
//  Copyright © 2019 Hawk Song. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
