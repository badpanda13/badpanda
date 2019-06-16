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


    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       // self.title = "Belka title. First VC"
        
        let labelFrame = CGRect(x: 0, y: 0, width: 100, height: 155 )
        myLabel.frame = labelFrame
        myLabel.numberOfLines = 0
        myLabel.lineBreakMode = .byWordWrapping
        myLabel.adjustsFontSizeToFitWidth = true
      //  myLabel.sizeToFit() // some problems with it - white screen without label
        myLabel.textColor = UIColor.blue
        myLabel.shadowColor = UIColor.yellow
        myLabel.shadowOffset = CGSize(width: 10, height: 20)
        myLabel.text = "Belka  belka belka /n belka belka belka"
        myLabel.font = UIFont.boldSystemFont(ofSize: 16)
        myLabel.center = self.view.center
        view.addSubview(myLabel)
    }
    
 

  
    
}

