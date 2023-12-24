//
//  UIColor+ext.swift
//  RandomColors
//
//  Created by Administrator on 24/12/23.
//

import UIKit

extension UIColor{
    
    static func createRandomColor() -> UIColor {
        var randomcolor = UIColor(red: CGFloat.random(in:0...1),
                            green: CGFloat.random(in:0...1),
                            blue: CGFloat.random(in:0...1),
                            alpha: 1)
        return randomcolor
    }
    
}
