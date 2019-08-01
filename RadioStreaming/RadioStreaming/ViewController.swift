//
//  ViewController.swift
//  RadioStreaming
//
//  Created by Shaun Reid on 7/30/19.
//  Copyright © 2019 Shaun Reid. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func playRadio(_ sender: AnyObject) {
        
        guard let url = URL(string: "http://38.135.36.122:13188/;stream.mp3") else {
            return
        }
        let player = AVPlayer(url: url)
        
        let controller = AVPlayerViewController()
        controller.player = player
        
        present(controller, animated: true){
            player.play()
        }
        
    }


}

