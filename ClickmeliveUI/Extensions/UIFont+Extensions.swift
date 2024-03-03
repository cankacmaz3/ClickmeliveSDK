//
//  UIFont+Extensions.swift
//  ClickmeliveUI
//
//  Created by Can on 3.03.2024.
//

import UIKit

extension UIFont {
    static func appFont(_ font: Fonts, size: CGFloat) -> UIFont {
        return UIFont(name: FontManager.getFontName(for: font), size: size)!
    }
}
