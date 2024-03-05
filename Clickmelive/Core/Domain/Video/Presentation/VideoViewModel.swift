//
//  VideoViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class VideoViewModel {
    private let model: Video
    
    public init(model: Video) {
        self.model = model
    }
    
    public var id: String {
        model.id
    }
    
    public var title: String {
        model.title
    }
    
    public var itemsCount: String {
        VideoLocalization.shared.itemsCount(model.items.count)
    }
    
    public var isItemsHidden: Bool {
        model.items.isEmpty
    }
    
    public var firstItemImageURL: URL? {
        model.items.first?.imageUrl.asURL
    }
    
    public var thumbnailUrl: URL? {
        model.thumbnailUrl.asURL
    }
    
    public var videoUrl: URL? {
        model.videoUrl.asURL
    }
    
    public var totalViewer: String {
        model.totalViewer.toAbbreviateNumber()
    }
    
    public var totalLikeCount: String {
        model.totalLikeCount.toAbbreviateNumber()
    }
    
    public var statusTitle: String {
        return VideoLocalization.shared.status
    }
}
