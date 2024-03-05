//
//  CMLOptions.swift
//  Clickmelive
//
//  Created by Can on 2.03.2024.
//

public class CMLOptions {
    let apiKey: String

    private init(apiKey: String) {
        self.apiKey = apiKey
    }

    public class Builder {
        private var apiKey: String?
        
        public init() {}
        
        public func setApiKey(_ apiKey: String) -> Builder {
            self.apiKey = apiKey
            return self
        }

        public func build() -> CMLOptions {
            guard let apiKey = self.apiKey else {
                fatalError("Error: apiUrl and apiKey must be set before building.")
            }

            return CMLOptions(apiKey: apiKey)
        }
    }
}
