//
//  UIColor+Extensions.swift
//  MaxMilhasChallenge
//
//  Created by Marcos Vinicius da Cunha Brito on 07/09/18.
//  Copyright © 2018 Marcos Vinicius da Cunha Brito. All rights reserved.
//

import UIKit

public extension UIColor {

    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: 1.0)
    }

    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }

    class var random: UIColor {
        return UIColor(red: CGFloat(arc4random() % 256 ) / 256,
                       green: CGFloat(arc4random() % 256 ) / 256,
                       blue: CGFloat(arc4random() % 256 ) / 256,
                       alpha: 1.0)
    }
}
