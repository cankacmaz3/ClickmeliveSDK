//
//  UIViewController+PIPKitExtensions.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

import Foundation
import UIKit

extension UIViewController {
    
    private struct AssociatedKeys {
        static var pipEventDispatcher = "pipEventDispatcher"
    }
    
    var pipEventDispatcher: PIPKitEventDispatcher? {
        get {
            guard let keyPointer = AssociatedKeys.pipEventDispatcher.cString(using: .utf8) else { return nil }
            return objc_getAssociatedObject(self, keyPointer) as? PIPKitEventDispatcher
        }
        set {
            guard let keyPointer = AssociatedKeys.pipEventDispatcher.cString(using: .utf8) else { return }
            objc_setAssociatedObject(self, keyPointer, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
