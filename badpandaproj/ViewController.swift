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

    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var compSegmentControl = UISegmentedControl()
    var menuArray = ["One", "Two", "Three"]
    var imageView = UIImageView()
    var imageArray = [UIImage(named: "1.jpg"), UIImage(named: "2.jpg"), UIImage(named: "3.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
     //   self.imageView.center = self.view.center
      //  self.imageView.image = imageArray[0]
        self.view.addSubview(imageView)
        
        self.compSegmentControl = UISegmentedControl(items: self.menuArray)
        self.compSegmentControl.frame = CGRect(x: 30, y: 500, width: 300, height: 30)
        self.view.addSubview(self.compSegmentControl)
        
        compSegmentControl.addTarget(self, action: #selector(segmentChange), for: .valueChanged)
    }

    @objc func segmentChange(param: UISegmentedControl){
        if param == self.compSegmentControl {
            let segmentIndex = param.selectedSegmentIndex
            self.imageView.image = imageArray[segmentIndex]
        }
    }
  
    
}

