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


    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "Belka title. First VC"
       self.view.backgroundColor = UIColor.brown
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        self.tabBarItem = tabBarItem
        

    }
    
 

  
    
}

