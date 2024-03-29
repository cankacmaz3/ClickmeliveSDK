//
//  PIPKit.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

import Foundation
import UIKit

struct PIPShadow {
    let color: UIColor
    let opacity: Float
    let offset: CGSize
    let radius: CGFloat
    
    init(color: UIColor,
                opacity: Float,
                offset: CGSize,
                radius: CGFloat) {
        self.color = color
        self.opacity = opacity
        self.offset = offset
        self.radius = radius
    }
}

struct PIPCorner {
    let radius: CGFloat
    let curve: CALayerCornerCurve?
    
    init(radius: CGFloat,
                curve: CALayerCornerCurve? = nil) {
        self.radius = radius
        self.curve = curve
    }
}
 
enum PIPState {
    case pip
    case full
}

enum PIPPosition {
    case topLeft
    case middleLeft
    case bottomLeft
    case topRight
    case middleRight
    case bottomRight
}

enum _PIPState {
    case none
    case pip
    case full
    case exit
}

typealias PIPKitViewController = (UIViewController & PIPUsable)

final class PIPKit {
    
    static var isActive: Bool { return rootViewController != nil }
    static var isPIP: Bool { return state == .pip }
    static var visibleViewController: PIPKitViewController? { return rootViewController }
    
    static internal var state: _PIPState = .none
    static private var rootViewController: PIPKitViewController?
    static private var pipWindow: UIWindow?
    
    class func show(with viewController: PIPKitViewController, completion: (() -> Void)? = nil) {
        guard !isActive else {
            dismiss(animated: false) {
                PIPKit.show(with: viewController)
            }
            return
        }
        
        let newWindow: PIPKitWindow
        
        if #available(iOS 13.0, *),
           let currentWindowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            newWindow = PIPKitWindow(windowScene: currentWindowScene)
        } else {
            newWindow = PIPKitWindow()
        }
        
        newWindow.backgroundColor = .clear
        newWindow.rootViewController = viewController
        newWindow.windowLevel = .alert
        newWindow.makeKeyAndVisible()
        
        pipWindow = newWindow
        rootViewController = viewController
        state = (viewController.initialState == .pip) ? .pip : .full
        
        viewController.view.alpha = 0.0
        viewController.setupEventDispatcher()
        
        UIView.animate(withDuration: 0.25, animations: {
            PIPKit.rootViewController?.view.alpha = 1.0
        }) { (_) in
            completion?()
        }
    }
    
    class func dismiss(animated: Bool, completion: (() -> Void)? = nil) {
        state = .exit
        rootViewController?.pipDismiss(animated: animated, completion: {
            PIPKit.reset()
            completion?()
        })
    }
    
    // MARK: - Internal
    class func startPIPMode() {
        guard let rootViewController = rootViewController else {
            return
        }
        
        // PIP
        state = .pip
        rootViewController.pipEventDispatcher?.enterPIP()
    }
    
    class func stopPIPMode() {
        guard let rootViewController = rootViewController else {
            return
        }
        
        // fullScreen
        state = .full
        rootViewController.pipEventDispatcher?.enterFullScreen()
    }
    
    // MARK: - Private
    private static func reset() {
        PIPKit.state = .none
        PIPKit.pipWindow = nil
        PIPKit.rootViewController = nil
        UIApplication.shared._keyWindow?.makeKeyAndVisible()
    }
    
}

final private class PIPKitWindow: UIWindow {
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        guard let rootViewController = rootViewController else {
            return super.hitTest(point, with: event)
        }
        
        return rootViewController.view.frame.contains(point) ? super.hitTest(point, with: event) : nil
    }
    
}

