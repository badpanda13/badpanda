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

   var displaySecondButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "First vc"
        
        self.displaySecondButton = UIButton(type: .system)
        self.displaySecondButton.setTitle("Second button", for: .normal)
        self.displaySecondButton.sizeToFit()
        self.displaySecondButton.center = self.view.center
        self.displaySecondButton.addTarget(self, action: #selector(changeButton(param:)), for: .touchUpInside)
        self.view.addSubview(self.displaySecondButton)

    }
    
    @objc func changeButton(param: Any){
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }

  
    
}

