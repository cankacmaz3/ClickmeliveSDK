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
        model.imageUrl
    }
    
    public var deeplinkUrl: URL? {
        model.deeplinkUrl
    }
}
