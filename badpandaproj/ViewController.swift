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

   
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buttonChange(_ sender: Any) {
        let button = sender as! UIButton
        if button.titleLabel?.text == "but1" {
            print("BUT1")
        } else if button.tag == 1 {
            print("BUT2")
        }
    }
    
}

