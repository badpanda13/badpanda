//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit
//import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {

    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 50, height: self.view.bounds.height / 2))
        myTextView.text = "belka belak blka belka belka"
        myTextView.backgroundColor = UIColor.green
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(myTextView)
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification , object: nil)
    }
    
    //NSNotification.Name.UIKeyboardDidShow
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder();
        self.myTextView.backgroundColor = UIColor.white
        
    }
    
    
    //чтобы появилась в симуляторе мобильная клавиатура, надо нажать в симуляторе шифт + команд + к
    @objc func updateTextView(param: NSNotification){
        let userInfo = param.userInfo
        //        let getKeyboadrRect = (userInfo![UIKeyboadrFrameAndUserInfoKey] as! NSValue).cgRectValueA
        var getKeyboadrRect  = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardFrame = self.view.convert(getKeyboadrRect, to: view.window)
        if param.name == UIResponder.keyboardWillHideNotification {
            //если клавиатура прячется
            myTextView.contentInset = UIEdgeInsets.zero
        }else {
            //еслик лавиатура появляется
            myTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height, right: 0)
            myTextView.scrollIndicatorInsets = myTextView.contentInset
        }
        
        myTextView.scrollRangeToVisible(myTextView.selectedRange)
    }
}

