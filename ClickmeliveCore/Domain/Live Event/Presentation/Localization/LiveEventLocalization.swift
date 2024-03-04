//
//  LiveEventLocalization.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class LiveEventLocalization {
    
    public var table: String { "LiveEvent" }
    public var bundle: Bundle = Bundle(for: LiveEventLocalization.self)
    
    public static let shared = LiveEventLocalization()
    
    public init() {}
    
    
    public func estimatedStartingDate(day: String, month: String, time: String) -> String {
        let format = NSLocalizedString(
            "LiveEventEstimatedStartingDate",
            tableName: table,
            bundle: bundle,
            comment: "Title for items count")
    
        return String(format: format, day, month, time)
    }
    
    public func itemsCount(_ count: Int) -> String {
        let format = NSLocalizedString(
            "LiveEventItemsCount",
            tableName: table,
            bundle: bundle,
            comment: "Title for items count")
    
        return String(format: format, count)
    }
    
    public var statusReadyToStream: String {
        NSLocalizedString(
            "LiveEventStatusReadyToStream",
            tableName: table,
            bundle: bundle,
            comment: "Title for ready to stream status")
    }
    
    public var statusReplayAvailable: String {
        NSLocalizedString(
            "LiveEventStatusReplayAvailable",
            tableName: table,
            bundle: bundle,
            comment: "Title for replay available status")
    }
    
    public var statusStreamEnded: String {
        NSLocalizedString(
            "LiveEventStatusStreamEnded",
            tableName: table,
            bundle: bundle,
            comment: "Title for stream ended status")
    }
    
    public var statusStreaming: String {
        NSLocalizedString(
            "LiveEventStatusStreaming",
            tableName: table,
            bundle: bundle,
            comment: "Title for streaming status")
    }
}
