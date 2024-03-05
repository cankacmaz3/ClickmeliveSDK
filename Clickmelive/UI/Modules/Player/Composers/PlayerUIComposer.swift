//
//  PlayerUIComposer.swift
//  ClickmeliveUI
//
//  Created by Can on 4.03.2024.
//

import Foundation
import UIKit

final class PlayerUIComposer {
    private init() {}
    
    static func makePlayerViewController(playerType: PlayerType,
                                         onItemsTapped: @escaping ([Item], PlayerViewController?) -> Void) -> PlayerViewController {
        
        /*let apolloClient = CMLApolloClient.shared.apollo
        let userDefaults = CMLUserDefaults()
        let imageLoader = SDWebImageLoader() */
        
        let controller = PlayerViewController()
        
        /*let liveEventDetailManager = LiveEventDetailManagerFactory().makeManager(
            client: apolloClient
        )
        
        let liveEventDetailManagerOutputHandler = LiveEventDetailManagerOutputHandler(
            controller: controller,
            imageLoader: imageLoader
        )
        
        liveEventDetailManager.output = liveEventDetailManagerOutputHandler
        
        let videoDetailManager = VideoDetailManagerFactory().makeManager(
            client: apolloClient
        )
        
        let videoDetailManagerOutputHandler = VideoDetailManagerOutputHandler(
            controller: controller,
            imageLoader: imageLoader
        )
        
        videoDetailManager.output = videoDetailManagerOutputHandler
        
        let liveEventStatsChangeManager = LiveEventStatsChangeManagerFactory().makeManager(
            client: apolloClient
        )
        
        let liveEventStatsChangeManagerOutputHandler = LiveEventStatsChangeManagerOutputHandler(
            controller: controller
        )
        
        liveEventStatsChangeManager.output = liveEventStatsChangeManagerOutputHandler
        
        let videoStatsChangeManager = VideoStatsChangeManagerFactory().makeManager(
            client: apolloClient
        )
        
        let videoStatsChangeManagerOutputHandler = VideoStatsChangeManagerOutputHandler(
            controller: controller,
            imageLoader: imageLoader
        )
        
        videoStatsChangeManager.output = videoStatsChangeManagerOutputHandler
        
        let liveEventViewerIncreaseManager = LiveEventViewerIncreaseManagerFactory().makeManager(
            client: apolloClient
        )
        
        let liveEventUserInteractionManager = LiveEventUserInteractionManagerFactory().makeManager(
            client: apolloClient
        )
        
        let liveEventUserInteractionManagerOutputHandler = LiveEventUserInteractionManagerOutputHandler(
            controller: controller
        )
        
        liveEventUserInteractionManager.output = liveEventUserInteractionManagerOutputHandler
        
        let videoViewerIncreaseManager = VideoViewerIncreaseManagerFactory().makeManager(
            client: apolloClient
        )
        
        let videoUserInteractionManager = VideoUserInteractionManagerFactory().makeManager(
            client: apolloClient
        )
        
        let videoUserInteractionManagerOutputHandler = VideoUserInteractionManagerOutputHandler(
            controller: controller
        )
        
        videoUserInteractionManager.output = videoUserInteractionManagerOutputHandler
     
        let liveEventLikeManager = LiveEventLikeManagerFactory().makeManager(
            client: apolloClient
        )
        
        let liveEventLikeManagerOutputHandler = LiveEventLikeManagerOutputHandler(
            controller: controller,
            userId: userDefaults.userId,
            liveEventUserInteractionManager: liveEventUserInteractionManager
        )
        
        liveEventLikeManager.output = liveEventLikeManagerOutputHandler
        
        let videoLikeManager = VideoLikeManagerFactory().makeManager(
            client: apolloClient
        )
        
        let videoLikeManagerOutputHandler = VideoLikeManagerOutputHandler(
            controller: controller,
            userId: userDefaults.userId,
            videoUserInteractionManager: videoUserInteractionManager
        )
        
        videoLikeManager.output = videoLikeManagerOutputHandler
        
        let chatMessageCreateManager = ChatMessageCreateManagerFactory().makeManager(
            client: apolloClient
        )
        
        let playerViewControllerOutputHandler = PlayerViewControllerOutputHandler(
            controller: controller,
            playerType: playerType,
            userId: userDefaults.userId,
            videoDetailManager: videoDetailManager,
            liveEventDetailManager: liveEventDetailManager,
            videoLikeManager: videoLikeManager,
            liveEventLikeManager: liveEventLikeManager,
            chatMessageCreateManager: chatMessageCreateManager,
            onItemsTapped: { [weak controller] items in
                onItemsTapped(items, controller)
            }
        )
        
        controller.output = playerViewControllerOutputHandler
        
        let chatLoadingManager = ChatMessageLoadingManagerFactory().makeManager(
            client: apolloClient
        )
        
        let chatMessageLoadingManagerOutputHandler = ChatMessageLoadingManagerOutputHandler(
            controller: controller
        )
        
        chatLoadingManager.output = chatMessageLoadingManagerOutputHandler
        
        let liveEventViewerCountManager = LiveEventViewerCountManagerFactory().makeManager(
            client: apolloClient
        )
        
        let liveEventViewerCountManagerOutputHandler = LiveEventViewerCountManagerOutputHandler(
            controller: controller
        )
        
        liveEventViewerCountManager.output = liveEventViewerCountManagerOutputHandler
       
        controller.onViewDidLoad { [weak controller] in
            switch playerType {
            case let .Video(id):
                videoDetailManager.listen(id: id)
                videoStatsChangeManager.listenVideoStats(id: id)
                videoDetailManager.loadVideo(id: id)
                videoViewerIncreaseManager.increaseVideoViewer(id: id, userId: userDefaults.userId)
                videoUserInteractionManager.loadVideoUserInteraction(videoId: id, userId: userDefaults.userId, initialCall: true)
            case let .LiveEvent(id):
                controller?.onShouldUpdateLiveEventViewerCount = {
                    liveEventViewerCountManager.loadViewerCount(eventId: id)
                }
               
                liveEventDetailManager.listen(id: id)
                chatLoadingManager.listen(eventId: id)
                chatLoadingManager.load(eventId: id)
                liveEventStatsChangeManager.listenLiveEventStats(id: id)
                liveEventDetailManager.loadEventDetail(id: id)
                liveEventViewerIncreaseManager.increaseLiveEventViewer(id: id, userId: userDefaults.userId)
                liveEventUserInteractionManager.loadLiveEventUserInteraction(liveEventId: id, userId: userDefaults.userId, initialCall: true)
            }
        } */
        
        return controller
    }
}
