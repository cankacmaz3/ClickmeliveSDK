//
//  PlayerFlow.swift
//  Clickmelive
//
//  Created by Can on 5.03.2024.
//

import UIKit

class PlayerFlow: ParentCoordinator & ChildCoordinator {
    
    deinit {
        print("deinit PlayerFlow")
    }
    
    var teardown: ((PlayerFlow) -> Void)?
    var children: [AnyObject] = []
    
    private let playerType: PlayerType
    
    init(playerType: PlayerType) {
        self.playerType = playerType
    }
    
    func start() {
        let playerUIComposer = PlayerUIComposer.makePlayerViewController(
            playerType: playerType,
            onItemsTapped: { [weak self] items, controller in
                self?.startItemsFlow(items: items, controller: controller)
            }
        )
        
        playerUIComposer.onDeinit {  [weak self] in
            self?.stop()
        }
        
        PIPKit.show(with: playerUIComposer, completion: nil)
    }
}

extension PlayerFlow {
    private func startItemsFlow(items: [Item], controller: PlayerViewController?) {
        let itemsFlow = ItemsFlow(
            controller: controller,
            items: items
        )
            
        itemsFlow.teardown = { [weak self] coordinator in
            self?.children.removeAll(where: { $0 === coordinator })
        }
        children.append(itemsFlow)
        itemsFlow.start()
    }
}


