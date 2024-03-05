//
//  PlayerViewController+PIPUsable.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

import UIKit

extension PlayerViewController: PIPUsable {
    public var initialState: PIPState { return .full }
    public var initialPosition: PIPPosition { return .bottomRight }
    public var pipSize: CGSize { return CGSize(width: 147, height: 252) }
    public var pipCorner: PIPCorner? { return PIPCorner(radius: 10, curve: nil ) }
    
    
    public func onMinimizeTapped() {
        startPIPMode()
        enterPipMode()
    }
    
    public func onCloseTapped() {
        PIPKit.dismiss(animated: true)
    }
    
    func enterPipMode() {
        playerVCView.bringSubviewToFront(playerVCView.playerView)
        playerVCView.bringSubviewToFront(playerVCView.pipInteractionOverlay)
        playerVCView.pipInteractionOverlay.isHidden = false
        
        if let tapGesture = viewTapGesture {
            playerVCView.removeGestureRecognizer(tapGesture)
        }
        
        view.endEditing(true)
    }
    
    func enterFullMode() {
        playerVCView.sendSubviewToBack(playerVCView.playerView)
        playerVCView.sendSubviewToBack(playerVCView.pipInteractionOverlay)
        playerVCView.pipInteractionOverlay.isHidden = true
        
        if let tapGesture = viewTapGesture {
            playerVCView.addGestureRecognizer(tapGesture)
        }
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        if PIPKit.isPIP {
            stopPIPMode()
            enterFullMode()
        }
    }
}
