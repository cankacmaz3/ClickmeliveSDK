//
//  DummyComposerView.swift
//  ClickmeliveUI
//
//  Created by Can on 4.03.2024.
//

import UIKit

extension DummyComposerView {
    func configure(with viewModel: VideoViewModel) {
        isHidden = true
    }
}

extension DummyComposerView {
    func configure(with viewModel: LiveEventViewModel) {
        isHidden = viewModel.status != .Streaming
    }
}

extension DummyComposerView {
    func setSendButtonState(isEnabled: Bool) {
        btnSendMessage.isEnabled = isEnabled
        btnSendMessage.alpha = isEnabled ? 1.0: 0.3
    }
}

class DummyComposerView: _View {
    
    var viewHeight: CGFloat { return 44 }
    
    private(set) lazy var btnChatVisibility: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private(set) lazy var composeView: UIView = {
        let view = UIView()
        return view
    }()
    
    private(set) lazy var lblStartTyping: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private(set) lazy var btnSendMessage: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override func setUpAppearance() {
        super.setUpAppearance()
        composeView.backgroundColor = .appColor(.appDimmedBackground)
        
        lblStartTyping.font = .appFont(.medium, size: 12)
        lblStartTyping.textColor = .appColor(.appPrimaryText)
    }
   
    override func setUpLayout() {
        super.setUpLayout()
        constrainHeight(viewHeight)
        
        composeView.addSubview(lblStartTyping)
        
        [btnChatVisibility, composeView, btnSendMessage].forEach {
            addSubview($0)
        }
        
        btnSendMessage.anchor(right: composeView.rightAnchor, rightConstant: 24, widthConstant: 31, heightConstant: 31)
        btnSendMessage.anchorCenterYToSuperview()
        
        lblStartTyping.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        lblStartTyping.anchor(left: composeView.leftAnchor, right: btnSendMessage.leftAnchor, leftConstant: 16, rightConstant: 12)
        lblStartTyping.anchorCenterYToSuperview()
        
        btnChatVisibility.anchor(left: leftAnchor, widthConstant: 26, heightConstant: 23)
        btnChatVisibility.anchorCenterYToSuperview()
        
        composeView.anchor(top: topAnchor, left: btnChatVisibility.rightAnchor, bottom: bottomAnchor, right: rightAnchor, leftConstant: 16)
    }
    
    // TODO: - Add Localization
    override func updateContent() {
        super.updateContent()
        btnChatVisibility.setImage(.appImage(.iconChat), for: .normal)
        btnSendMessage.setImage(.appImage(.iconSend), for: .normal)
        lblStartTyping.text = "Yazmaya Başla..."
    }
   
    override func layoutSubviews() {
        super.layoutSubviews()
        composeView.layer.cornerRadius = bounds.height / 2
    }
}
