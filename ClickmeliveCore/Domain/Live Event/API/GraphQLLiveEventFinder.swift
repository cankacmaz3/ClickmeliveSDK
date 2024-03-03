//
//  GraphQLLiveEventFinder.swift
//  ClickmeliveCore
//
//  Created by Can on 3.03.2024.
//

import ClickmeliveSaasAPI

final class GraphQLLiveEventFinder: GraphQLClient, LiveEventFinder {
    func find(query: LiveEventsQuery, completion: @escaping (LiveEventFinder.Result) -> Void) {
        /*perform(query: SearchLiveEventsQuery(title: title, tags: tags, statuses: statuses, replayAvailable: replayAvailable, limit: limit, page: page), mapper: GraphQLLiveEventMapper.map, completion: completion)*/
    }
}

class LiveEventsQuery {
    static let defaultPage = 1
    static let defaultLimit = 10
    
    class Params {
        private var page: Int = LiveEventsQuery.defaultPage
        private var limit: Int = LiveEventsQuery.defaultLimit
        private var replayAvailable: Bool?
        private var title: String?
        private var statuses: [LiveEventStatus]?
        private var tags: [String]?

        @discardableResult
        func page(_ page: Int) -> Params {
            self.page = page
            return self
        }

        @discardableResult
        func limit(_ limit: Int) -> Params {
            self.limit = limit
            return self
        }

        @discardableResult
        func replayAvailable(_ replayAvailable: Bool) -> Params {
            self.replayAvailable = replayAvailable
            return self
        }

        @discardableResult
        func title(_ title: String) -> Params {
            self.title = title
            return self
        }

        @discardableResult
        func statuses(_ statuses: [LiveEventStatus]) -> Params {
            self.statuses = statuses
            return self
        }

        @discardableResult
        func statuses(_ statuses: LiveEventStatus...) -> Params {
            self.statuses = statuses
            return self
        }

        @discardableResult
        func tags(_ tags: [String]) -> Params {
            self.tags = tags
            return self
        }

        func getPage() -> Int {
            return page
        }

        func getLimit() -> Int {
            return limit
        }

        func getReplayAvailable() -> Bool? {
            return replayAvailable
        }

        func getTitle() -> String? {
            return title
        }

        func getStatuses() -> [LiveEventStatus]? {
            return statuses
        }

        func getTags() -> [String]? {
            return tags
        }
    }
}
