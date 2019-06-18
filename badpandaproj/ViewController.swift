//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit
//import AVFoundation

class ViewController: UIViewController {

   
    
    var myImageView = UIImageView()
    
    let imageKsu = UIImage(named: "1.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //  myImageView = UIImageView(image: imageKsu)
        //  myImageView = UIImageView(frame: self.view.bounds)
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        myImageView.image = imageKsu
        myImageView.center = view.center
        myImageView.contentMode = .scaleAspectFit
        myImageView.layer.cornerRadius = 180
        myImageView.clipsToBounds = true
        self.view.addSubview(myImageView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
}

