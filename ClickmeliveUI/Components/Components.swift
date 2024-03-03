//
//  Components.swift
//  ClickmeliveUI
//
//  Created by Can on 3.03.2024.
//

struct Components {
    init() {}
    
    static var `default` = Self()
    
    var itemsVCView: ItemsVCView.Type = ItemsVCView.self
    var itemCell: ItemCell.Type = ItemCell.self
}
