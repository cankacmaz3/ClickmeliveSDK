//
//  CMLOptions.swift
//  Clickmelive
//
//  Created by Can on 2.03.2024.
//

public class CMLOptions {
    let apiUrl: String
    let apiKey: String

    private init(apiUrl: String, apiKey: String) {
        self.apiUrl = apiUrl
        self.apiKey = apiKey
    }

    public class Builder {
        private var apiUrl: String?
        private var apiKey: String?
        
        public init() {}
        
        public func setApiUrl(_ apiUrl: String) -> Builder {
            self.apiUrl = apiUrl
            return self
        }

        public func setApiKey(_ apiKey: String) -> Builder {
            self.apiKey = apiKey
            return self
        }

        public func build() -> CMLOptions {
            guard let apiUrl = self.apiUrl, let apiKey = self.apiKey else {
                fatalError("Error: apiUrl and apiKey must be set before building.")
            }

            return CMLOptions(apiUrl: apiUrl, apiKey: apiKey)
        }
    }
}
