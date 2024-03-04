//
//  VideoUserInteractionViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class VideoUserInteractionViewModel {
    private let model: VideoUserInteraction
    
    public init(model: VideoUserInteraction) {
        self.model = model
    }
    
    public var like: Bool {
        model.like
    }
}
