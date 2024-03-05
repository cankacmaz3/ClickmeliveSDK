//
//  CMLChatOptions.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

public class CMLChatOptions {
    private var username: String?
    
    private init() {}
    
    public class Builder {
        private var options = CMLChatOptions()
        
        public func setUsername(_ username: String) -> Builder {
            options.username = username
            return self
        }
        
        public func build() -> CMLChatOptions {
            return options
        }
    }
}
