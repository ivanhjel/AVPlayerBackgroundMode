//
//  AppDelegate.swift
//  AVPlayerBackgroundMode
//
//  Created by Ivan Lé Hjelmeland on 14/05/2019.
//  Copyright © 2019 AboveApps. All rights reserved.
//

import UIKit
import AVKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            print("AVAudioSession Category Playback OK")
            do {
                try AVAudioSession.sharedInstance().setActive(true)
                print("AVAudioSession is Active")
            } catch let error {
                print(error.localizedDescription)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Whenever the app is entering background
        // we have to disconnect the AVPlayer to prevent it from pausing.
        VideoPlayer.sharedInstance.controller.player = nil
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // We need to connect it again when app is entering foreground.
        VideoPlayer.sharedInstance.controller.player = VideoPlayer.sharedInstance.player
    }

}

