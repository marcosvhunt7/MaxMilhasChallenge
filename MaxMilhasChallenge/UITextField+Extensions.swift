//
//  UITextField+Extensions.swift
//  MaxMilhasChallenge
//
//  Created by Marcos Vinicius da Cunha Brito on 07/09/18.
//  Copyright © 2018 Marcos Vinicius da Cunha Brito. All rights reserved.
//

import UIKit

extension UITextField {
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
            CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 0, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }

    func setPaddingLeft(size: CGFloat) {
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 0, y: 0, width: size, height: self.frame.height))
        leftView = iconContainerView
        leftViewMode = .always
    }

    func setPaddingRight(size: CGFloat) {
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 0, y: 0, width: size, height: self.frame.height))
        rightView = iconContainerView
        rightViewMode = .always
    }
}
