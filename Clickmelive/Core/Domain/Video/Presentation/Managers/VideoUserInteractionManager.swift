//
//  VideoUserInteractionManager.swift
//  Clickmelive
//
//  Created by Can on 6.03.2024.
//

import Foundation

protocol VideoUserInteractionManagerOutput {
    func videoUserInteractionLoaded(videoUserInteraction: VideoUserInteraction, initialCall: Bool)
}

public final class VideoUserInteractionManager {
    
    var output: VideoUserInteractionManagerOutput?
    var failureOutput: FailureOutput?
    
    private let videoUserInteractionLoader: VideoUserInteractionLoader
    
    init(videoUserInteractionLoader: VideoUserInteractionLoader) {
        self.videoUserInteractionLoader = videoUserInteractionLoader
    }
}

extension VideoUserInteractionManager {
    func loadVideoUserInteraction(videoId: String, userId: String, initialCall: Bool) {
        videoUserInteractionLoader.load(videoId: videoId, userId: userId) { [weak self] result in
            switch result {
            case let .success(videoUserInteraction):
                self?.output?.videoUserInteractionLoaded(videoUserInteraction: videoUserInteraction, initialCall: initialCall)
            case let .failure(error):
                print(error.localizedDescription)
                self?.failureOutput?.failed(error: error)
            }
        }
    }
}
