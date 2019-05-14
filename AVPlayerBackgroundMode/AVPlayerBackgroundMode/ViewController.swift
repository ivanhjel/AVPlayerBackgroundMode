//
//  ViewController.swift
//  AVPlayerBackgroundMode
//
//  Created by Ivan Lé Hjelmeland on 14/05/2019.
//  Copyright © 2019 AboveApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(VideoPlayer.sharedInstance.controller.view)
        self.addChild(VideoPlayer.sharedInstance.controller)
        VideoPlayer.sharedInstance.play()

    }

}

