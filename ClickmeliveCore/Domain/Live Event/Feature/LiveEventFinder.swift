//
//  LiveEventFinder.swift
//  ClickmeliveCore
//
//  Created by Can on 3.03.2024.
//

protocol LiveEventFinder {
    typealias Result = Swift.Result<[LiveEvent], Error>

    func find(query: LiveEventsQuery ,completion: @escaping (Result) -> Void)
}
