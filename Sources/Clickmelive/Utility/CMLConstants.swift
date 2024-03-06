//
//  CMLConstants.swift
//  Clickmelive
//
//  Created by Can on 2.03.2024.
//

import Foundation

enum CMLConstants {
    static let hostKey = "host"
    static let hostValue = CML.shared.getAPIConfiguration().domain

    static let authKey = "x-api-key"
    static let authValue = CML.shared.getApiKey()

    static let networkEndPoint = CML.shared.getAPIConfiguration().apiUrl
    static let realtimeEndPoint = CML.shared.getAPIConfiguration().wssUrl
}
