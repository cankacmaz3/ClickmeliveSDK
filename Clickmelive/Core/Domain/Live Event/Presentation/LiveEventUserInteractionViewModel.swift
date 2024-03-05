//
//  LiveEventUserInteractionViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class LiveEventUserInteractionViewModel {
    private let model: LiveEventUserInteraction
    
    public init(model: LiveEventUserInteraction) {
        self.model = model
    }
    
    public var like: Bool {
        model.like
    }
}
