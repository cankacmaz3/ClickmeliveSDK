//
//  CMLConstants.swift
//  Clickmelive
//
//  Created by Can on 2.03.2024.
//

import Foundation

enum CMLConstants {
    static let hostKey = "host"
    static let hostValue = CML.shared.getApiUrl()

    static let authKey = "x-api-key"
    static let authValue = CML.shared.getApiKey()

    static let networkEndPoint = "https://zda3sspwdvfufbzqa6at2bfheu.appsync-api.eu-west-1.amazonaws.com/graphql"
    static let realtimeEndPoint = "wss://zda3sspwdvfufbzqa6at2bfheu.appsync-realtime-api.eu-west-1.amazonaws.com/graphql"
}
