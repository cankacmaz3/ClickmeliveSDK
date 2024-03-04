//
//  VideoLocalization.swift
//  ClickmeliveCore
//
//  Created by Can on 4.03.2024.
//

import Foundation

public final class VideoLocalization {
    
    public var table: String { "Video" }
    public var bundle: Bundle = Bundle(for: VideoLocalization.self)
    
    public static let shared = VideoLocalization()
    
    public init() {}
    
    public func itemsCount(_ count: Int) -> String {
        let format = NSLocalizedString(
            "VideoItemsCount",
            tableName: table,
            bundle: bundle,
            comment: "Title for items count")
    
        return String(format: format, count)
    }
    
    public var status: String {
        NSLocalizedString(
            "VideoStatus",
            tableName: table,
            bundle: bundle,
            comment: "Title for video status")
    }
}
