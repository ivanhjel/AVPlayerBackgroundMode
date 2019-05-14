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
        controller.player = player
        player.play()
    }
}
