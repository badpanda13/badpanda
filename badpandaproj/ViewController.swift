//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

