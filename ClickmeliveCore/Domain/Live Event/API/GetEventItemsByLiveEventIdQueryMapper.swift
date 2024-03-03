//
//  GetEventItemsByLiveEventIdQueryMapper.swift
//  ClickmeliveCore
//
//  Created by Can on 2.03.2024.
//

import Foundation
import ClickmeliveSaasAPI

struct GetEventItemsByLiveEventIdQueryMapper {
    static func map(data: GetEventItemsByLiveEventIdQuery.Data?) -> Result<[Item], Error> {
        guard let data = data else {
            return .failure(GraphQLMapperError.noDataReceived)
        }

        guard let liveEventItemsData = data.getEventItemsByLiveEventId?.compactMap({ $0 }) else {
            return .failure(GraphQLMapperError.dataMissing)
        }

        let liveEventItems: [Item] = liveEventItemsData.compactMap {$0}.compactMap { item in
            let imageUrl = URL(string: item.imageUrl)
            let deeplinkUrl = URL(string: item.deeplinkUrl)
            
            return Item(name: item.name,
                        imageUrl: imageUrl,
                        deeplinkUrl: deeplinkUrl)
        }
        
        return .success(liveEventItems)
    }
}
