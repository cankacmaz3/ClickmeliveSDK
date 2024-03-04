//
//  ChatCellController.swift
//  ClickmeliveUI
//
//  Created by Can on 4.03.2024.
//

import UIKit
import ClickmeliveCore

public final class ChatCellController: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private var chatCell = Components.default.chatCell
    
    private let viewModel: ChatMessageViewModel
    
    public init(viewModel: ChatMessageViewModel) {
        self.viewModel = viewModel
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(with: chatCell.self, for: indexPath)
        cell.configure(with: viewModel)
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        ChatCell.chatSize(viewModel: viewModel, maxWidth: collectionView.frame.width)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
}

