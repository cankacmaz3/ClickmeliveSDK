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

    func getApiKey() -> String {
        guard let options = options else {
            fatalError("CML is not initialized. You must initialize CML before accessing API Key.")
        }
        return options.apiKey
    }
    
    func getAPIConfiguration() -> APIConfiguration {
        .init(apiUrl: "https://zda3sspwdvfufbzqa6at2bfheu.appsync-api.eu-west-1.amazonaws.com/graphql",
              wssUrl: "wss://zda3sspwdvfufbzqa6at2bfheu.appsync-realtime-api.eu-west-1.amazonaws.com/graphql",
              domain: "zda3sspwdvfufbzqa6at2bfheu.appsync-api.eu-west-1.amazonaws.com")
    }
}

extension CML {
    public static func loadLiveEvents(params: CMLLiveEventsQuery.Params, completion: @escaping (Result<[LiveEvent], Error>) -> Void) {
        let liveEventFinder = GraphQLLiveEventFinder(apolloClient: CMLApolloClient.shared.apollo)
        liveEventFinder.find(params: params, completion: completion)
    }
}

extension CML {
    public static func loadVideos(params: CMLVideosQuery.Params, completion: @escaping (Result<[Video], Error>) -> Void) {
        let videoFinder = GraphQLVideoFinder(apolloClient: CMLApolloClient.shared.apollo)
        videoFinder.find(params: params, completion: completion)
    }
}

extension CML {
    static func startPlayer(cmlPlayerParams: CMLPlayerParams, cmlPlayerUIOptions: CMLPlayerUIOptions, cmlChatOptions: CMLChatOptions) {
        
    }
}
