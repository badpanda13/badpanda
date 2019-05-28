//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

   var player = AVAudioPlayer()

    @IBAction func pause(_ sender: Any) {
        self.player.pause()
    }
    
    
    @IBAction func playAction(_ sender: Any) {
            self.player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            if let audioPath = Bundle.main.path(forResource: "Kitty-meows", ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            }
        } catch {
            print("ERROR")
        }

        self.player.play()

    }
//    var player: AVAudioPlayer?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        player = initializePlayer()
//        player?.play()
//    }
//
//    private func initializePlayer() -> AVAudioPlayer? {
//        guard let path = Bundle.main.path(forResource: "Downloads", ofType: "mp3") else {
//             print("ERROR")
//            return nil
//        }
//
//        return try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//    }
    
}

