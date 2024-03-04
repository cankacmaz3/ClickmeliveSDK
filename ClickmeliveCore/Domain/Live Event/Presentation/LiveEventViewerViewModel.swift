//
//  LiveEventViewerViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class LiveEventViewerViewModel {
    private let model: LiveEventViewer
    
    public init(model: LiveEventViewer) {
        self.model = model
    }
    
    public var viewerCount: String {
        model.viewerCount.toAbbreviateNumber()
    }
    
    public var isViewerCountHidden: Bool {
        model.viewerCount <= 0
    }
}

