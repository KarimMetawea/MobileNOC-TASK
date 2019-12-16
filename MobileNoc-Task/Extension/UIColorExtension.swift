//
//  UIColorExtension.swift
//  AlQastas
//
//  Created by Vortex on 2/5/19.
//  Copyright © 2019 Tarek Sabry. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var mainColor: UIColor { return UIColor(0x6DC233) }
    static var darkColor: UIColor { return UIColor(0x3067FF) }
    static var lightTypo: UIColor { return UIColor(0x9F9F9F) }
    static var gray248: UIColor { return UIColor(0xF8F8F8)}
    static var searchBarColor: UIColor { return UIColor(0xF0F1FB)}
    
    public convenience init(_ rgbValue : UInt32, alpha: CGFloat = 1.0) {
        
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8) / 256.0
        let blue = CGFloat(rgbValue & 0xFF) / 256.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}
