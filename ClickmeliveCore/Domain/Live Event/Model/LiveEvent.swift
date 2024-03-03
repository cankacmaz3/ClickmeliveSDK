//
//  LiveEvent.swift
//  ClickmeliveCore
//
//  Created by Can on 2.03.2024.
//

import Foundation
import ClickmeliveSaasAPI

struct LiveEvent {
    let id: String
    let status: LiveEventStatus
    let title: String
    let tags: [Tag]
    let items: [Item]
    let playbackUrl: String?
    let teaserUrl: String?
    let replayUrl: String?
    let thumbnailUrl: String?
    let totalViewer: Int
    let totalLikeCount: Int
    let estimatedStartingDate: String?
}
