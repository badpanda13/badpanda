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

    
    @IBOutlet weak var sliderBoard: UISlider!
    
    var player = AVAudioPlayer()

    let slider = UISlider()
    
    @IBAction func pause(_ sender: Any) {
        self.player.pause()
    }
    
    @IBAction func volumeAction(_ sender: Any) {
        self.player.volume = self.sliderBoard.value
    }
    
    @IBAction func playAction(_ sender: Any) {
            self.player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.slider.frame = CGRect(x: 0, y: 0, width: 300, height: 30)
        self.slider.center = self.view.center
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 1.0
        self.view.addSubview(slider)
        self.slider.addTarget(self, action: #selector(sliderChange), for: .valueChanged)
        do {
            if let audioPath = Bundle.main.path(forResource: "Kitty-meows", ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
            }
        } catch {
            print("ERROR")
        }

        self.player.play()

    }

    @objc func sliderChange(sender: UISlider){
        if sender == slider {
            self.player.currentTime = TimeInterval(sender.value)
            print(sender.value)
        }
    }
    
}

