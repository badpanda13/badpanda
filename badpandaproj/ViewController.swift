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

    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewConctroller: UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTextField()
        createButton()

    }

    func createTextField(){
        self.textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        self.textField.center = self.view.center
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.placeholder = "Enter text for quirell happiness"
        self.view.addSubview(self.textField)
    }
    
    func createButton(){
        self.buttonShare = UIButton(type: .roundedRect)
        self.buttonShare.frame = CGRect(x: 50, y: 350, width: 280, height: 44)
        self.buttonShare.setTitle("Расшарить", for: .normal)
        self.buttonShare.addTarget(self, action: #selector(handleShare(param:) ), for: .touchUpInside)
        self.view.addSubview(self.buttonShare)
    }
    
    @objc func handleShare(param: Any){
        let text = self.textField.text
        if text?.count == 0 {
            let message = "Сообщение само себя не напишет между прочим"
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
        self.activityViewConctroller = UIActivityViewController(activityItems: [self.textField.text ?? "nil"], applicationActivities: nil)
        self.present(self.activityViewConctroller!, animated: true, completion: nil)
    }

  
    
}

