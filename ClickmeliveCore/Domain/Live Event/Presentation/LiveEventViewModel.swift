//
//  LiveEventViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class LiveEventViewModel {
    private let model: LiveEvent
    
    public init(model: LiveEvent) {
        self.model = model
    }
    
    public var id: String {
        model.id
    }
    
    public var title: String {
        model.title
    }
    
    public var status: LiveEventStatus {
        model.status
    }
    
    public var itemsCount: String {
        LiveEventLocalization.shared.itemsCount(model.items.count)
    }
    
    public var isItemsHidden: Bool {
        model.items.isEmpty
    }
    
    public var firstItemImageURL: URL? {
        model.items.first?.imageUrl.asURL
    }
    
    public var playbackUrl: URL? {
        model.playbackUrl.asURL
    }
    
    public var teaserUrl: URL? {
        model.teaserUrl.asURL
    }
    
    public var replayUrl: URL? {
        model.replayUrl.asURL
    }
    
    public var thumbnailUrl: URL? {
        model.thumbnailUrl.asURL
    }
    
    public var totalViewer: String {
        model.totalViewer.toAbbreviateNumber()
    }
    
    public var totalLikeCount: String {
        model.totalLikeCount.toAbbreviateNumber()
    }
    
    public var replayAvailable: Bool {
        model.replayUrl != nil
    }
    
    public var estimatedStartingDate: String? {
        model.estimatedStartingDate
    }
    
    public var statusTitle: String? {
        guard replayUrl == nil else {
            return LiveEventLocalization.shared.statusReplayAvailable
        }
        
        switch status {
        case .None:
            return nil
        case .Created,
             .Teaser:
            guard let estimatedStartingDate = model.estimatedStartingDate,
                  let date = DateFormatter.iso8601WithMilliseconds.date(from: estimatedStartingDate) else {
                return nil
            }
            return LiveEventLocalization.shared.estimatedStartingDate(
                day: date.dayAsString(),
                month: date.monthAsString(),
                time: date.timeAsString()
            )
        case .ReadyToStream:
            return LiveEventLocalization.shared.statusReadyToStream
        case .Streaming:
            return LiveEventLocalization.shared.statusStreaming
        case .StreamEnded:
            return LiveEventLocalization.shared.statusStreamEnded
        }
    }
}

