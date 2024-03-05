//
//  FontManager.swift
//  ClickmeliveUI
//
//  Created by Can on 3.03.2024.
//

import UIKit

public enum Fonts: String {
    case light
    case regular
    case medium
    case bold
}

public struct FontManager {
    public static var light: String = Fonts.light.rawValue
    public static var regular: String = Fonts.regular.rawValue
    public static var medium: String = Fonts.medium.rawValue
    public static var bold: String = Fonts.bold.rawValue
   
    public static func setFontNames(_ fontNames: [Fonts: String]) {
        for (font, name) in fontNames {
            switch font {
            case .light:
                FontManager.light = name
            case .regular:
                FontManager.regular = name
            case .medium:
                FontManager.medium = name
            case .bold:
                FontManager.bold = name
            }
        }
    }

    public static func getFontName(for font: Fonts) -> String {
        switch font {
        case .light:
            return FontManager.light
        case .regular:
            return FontManager.regular
        case .medium:
            return FontManager.medium
        case .bold:
            return FontManager.bold
        }
    }
}
