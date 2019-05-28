//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creation of switch
      //  self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.mySwitch.center = self.view.center
        self.view.addSubview(mySwitch)
        //turn this shit on
        self.mySwitch.setOn(true, animated: true)
        //check
        if self.mySwitch.isOn {
            print("switch on")
        }else {
            print("switch off")
        }
        
        //handler
        self.mySwitch.addTarget(self, action: #selector(switchChange(paramTarget: )), for: .valueChanged)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   @objc func switchChange(paramTarget: UISwitch){
        print("param is = ",paramTarget)
        if paramTarget.isOn {
            print("switch on")
        }else {
            print("switch off")
        }
    }
    
    @IBAction func alertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Опрос", message: "Кто молодец??", preferredStyle: .alert)
        let action = UIAlertAction(title: "Белки!!!", style: .default){ (action) in
            let text = alertController.textFields?.first?.text
            print(text ?? "nil text")
        }
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion:nil)
    }
    
}

