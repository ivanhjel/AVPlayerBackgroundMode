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
        VideoPlayer.sharedInstance.controller.player = nil
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        VideoPlayer.sharedInstance.controller.player = VideoPlayer.sharedInstance.player
    }

}

