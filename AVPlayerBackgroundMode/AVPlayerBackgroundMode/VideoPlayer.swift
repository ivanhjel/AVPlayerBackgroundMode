//
//  VideoPlayer.swift
//  AVPlayerBackgroundMode
//
//  Created by Ivan Lé Hjelmeland on 15/05/2019.
//  Copyright © 2019 AboveApps. All rights reserved.
//

import Foundation
import AVKit

class VideoPlayer {
    static let sharedInstance = VideoPlayer()
    
    var player: AVPlayer = AVPlayer()
    let controller = AVPlayerViewController()
    
    func play() {
        let path = Bundle.main.path(forResource: "vertical_sample", ofType: "mov")
        let url = URL(fileURLWithPath: path!)
        player = AVPlayer(url: url)
        player.actionAtItemEnd = .none
        controller.player = player
        player.play()
        
        // Remove this to prevent autolooping of video. 
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
            self.player.seek(to: CMTime.zero)
            self.player.play()
        }
    }
}
