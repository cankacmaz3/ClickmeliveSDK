//
//  LiveEvent.swift
//  ClickmeliveCore
//
//  Created by Can on 2.03.2024.
//

import Foundation

struct LiveEvent {
    let id: String
    let status: LiveEventStatus
    let title: String
    let tags: [Tag]
    let items: [Item]
    let playbackUrl: URL?
    let teaserUrl: URL?
    let replayUrl: URL?
    let thumbnailUrl: URL?
    let totalViewer: Int
    let totalLikeCount: Int
    let estimatedStartingDate: String?
}
