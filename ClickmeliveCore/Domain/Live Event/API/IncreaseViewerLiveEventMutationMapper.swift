//
//  IncreaseViewerLiveEventMutationMapper.swift
//  ClickmeliveCore
//
//  Created by Can on 2.03.2024.
//

import Foundation
import ClickmeliveSaasAPI

struct IncreaseViewerLiveEventMutationMapper {
    static func map(data: IncreaseViewerLiveEventMutation.Data?) -> Result<LiveEvent, Error> {
        guard let data = data else {
            return .failure(GraphQLMapperError.noDataReceived)
        }
        
        guard let liveEventData = data.increaseViewerLiveEvent else {
            return .failure(GraphQLMapperError.dataMissing)
        }
        
        let tags: [Tag] = liveEventData.tags?.compactMap {$0}.compactMap { tag in
            Tag(title: tag)
        } ?? []
        
        let items: [Item] = liveEventData.items?.compactMap {$0}.compactMap { item in
            Item(name: item, imageUrl: nil, deeplinkUrl: nil)
        } ?? []
        
        let status = LiveEventStatus.getLiveEventStatus(from: liveEventData.status)
        let playbackUrl = liveEventData.playbackUrl.flatMap { URL(string: $0) }
        let teaserUrl = liveEventData.teaserUrl.flatMap { URL(string: $0) }
        let replayUrl = liveEventData.replayUrl.flatMap { URL(string: $0) }
        let thumbnailUrl = URL(string: liveEventData.thumbnailUrl)
        
        let liveEvent = LiveEvent(id: liveEventData.id,
                                  status: status,
                                  title: liveEventData.title,
                                  tags: tags,
                                  items: items,
                                  playbackUrl: playbackUrl,
                                  teaserUrl: teaserUrl,
                                  replayUrl: replayUrl,
                                  thumbnailUrl: thumbnailUrl,
                                  totalViewer: liveEventData.totalViewer,
                                  totalLikeCount: liveEventData.totalLikeCount,
                                  estimatedStartingDate: liveEventData.estimatedStartingDate)
    
        
        return .success(liveEvent)
    }
}
