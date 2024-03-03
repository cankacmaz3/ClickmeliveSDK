//
//  CML.swift
//  Clickmelive
//
//  Created by Can on 2.03.2024.
//

public class CML {
    public static let shared = CML()

    private var options: CMLOptions?

    private init() {}

    public static func initialize(_ cmlOptions: CMLOptions) {
        shared.options = cmlOptions
    }

    func getApiUrl() -> String {
        guard let options = options else {
            fatalError("CML is not initialized. You must initialize CML before accessing API URL.")
        }
        return options.apiUrl
    }

    func getApiKey() -> String {
        guard let options = options else {
            fatalError("CML is not initialized. You must initialize CML before accessing API Key.")
        }
        return options.apiKey
    }
}

extension CML {
    public static func loadLiveEvents(params: CMLLiveEventsQuery.Params, completion: @escaping (Result<[LiveEvent], Error>) -> Void) {
        let liveEventFinder = GraphQLLiveEventFinder(apolloClient: CMLApolloClient.shared.apollo)
        liveEventFinder.find(params: params, completion: completion)
    }
}
