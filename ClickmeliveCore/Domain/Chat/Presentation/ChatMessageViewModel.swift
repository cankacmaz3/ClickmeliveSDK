//
//  ChatMessageViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class ChatMessageViewModel {
    private let model: ChatMessage
    
    public init(model: ChatMessage) {
        self.model = model
    }
    
    public var id: String {
        model.id
    }
    
    public var userDisplayName: String {
        model.userDisplayName
    }
    
    public var message: String {
        model.message
    }
}
