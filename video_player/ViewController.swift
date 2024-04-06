//
//  ViewController.swift
//  video_player
//
//  Created by Ali serkan Boyracı  on 5.04.2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo() { // you must add this func to use AVPlayer
        // with guard let try to do first part not to it and second part.
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            debugPrint("test.mp4 not found")
            
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController() // you can use all actions like play, pause..
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
  
}

