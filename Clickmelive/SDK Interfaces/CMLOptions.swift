//
//  CMLOptions.swift
//  Clickmelive
//
//  Created by Can on 2.03.2024.
//

public class CMLOptions {
    let apiKey: String
    let fontNames: [Fonts: String]?

    private init(apiKey: String, fontNames: [Fonts: String]? = nil) {
        self.apiKey = apiKey
        self.fontNames = fontNames
    }

    public class Builder {
        private var apiKey: String?
        private var fontNames: [Fonts: String]?

        public init() {}

        public func setApiKey(_ apiKey: String) -> Builder {
            self.apiKey = apiKey
            return self
        }

        public func setFontNames(_ fontNames: [Fonts: String]?) -> Builder {
            self.fontNames = fontNames
            return self
        }

        public func build() -> CMLOptions {
            guard let apiKey = self.apiKey else {
                fatalError("Error: apiKey must be set before building.")
            }

            // Use the provided font names or revert to default values if not provided
            let fontsToUse = fontNames ?? [
                .light: Fonts.light.rawValue,
                .regular: Fonts.regular.rawValue,
                .medium: Fonts.medium.rawValue,
                .bold: Fonts.bold.rawValue
            ]

            // Update the FontManager with the selected or default fonts
            FontManager.setFontNames(fontsToUse)

            return CMLOptions(apiKey: apiKey, fontNames: fontsToUse)
        }
    }
}
