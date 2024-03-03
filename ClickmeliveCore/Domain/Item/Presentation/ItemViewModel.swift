//
//  ItemViewModel.swift
//  ClickmeliveCore
//
//  Created by Can on 3.03.2024.
//

import Foundation

public final class ItemViewModel {
    private let model: Item
    
    public init(model: Item) {
        self.model = model
    }
    
    public var name: String {
        model.name
    }
    
    public var imageURL: URL? {
        guard let urlString = model.imageUrl else { return nil }
        return URL(string: urlString)
    }
    
    public var deeplinkUrl: URL? {
        guard let urlString = model.deeplinkUrl else { return nil }
        return URL(string: urlString)
    }
}
