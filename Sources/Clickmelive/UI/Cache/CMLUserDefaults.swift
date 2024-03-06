//
//  UserDefaults.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

import UIKit

final class CMLUserDefaults {
    private let defaults: UserDefaults
   
    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    var userId: String {
        get {
            return defaults[#function] ?? ""
        }
        set {
            defaults[#function] = newValue
        }
    }
}
