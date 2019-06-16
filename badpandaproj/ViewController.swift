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


    var myTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       // self.title = "Belka title. First VC"
        
        var textFieldFrame = CGRect(x: 0, y: 0, width: 100, height: 31)
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
        myTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        myTextField.textAlignment = .center
        myTextField.placeholder = "belka?"
        myTextField.center = self.view.center
        self.view.addSubview(myTextField)
        myTextField.delegate = self
        
        // Это для отлавливания изменения в текстфилде
//        NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidChange), name: Notification.Name.NSUbiquityIdentityDidChange, object: nil)
     
        
        //это для того, чтобы при появлении клавиатуры (сейчас он у меня не появляется почему-то) , текстфилд смещался, нов  видео уроке было не UIResponder.keyboardWillShowNotification, а NSNotification.Name.UIKeyboardWillShow 
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in self.view.frame.origin.y = -200
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in self.view.frame.origin.x = 0.0
        }
    }
    
    @objc func textFieldDidChange(param: NSNotification){
        
    }
    //UITextFieldDelegate
    
    @available(iOS 2.0, *)
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        return true
    }
    
    @available(iOS 2.0, *)
    public func textFieldDidBeginEditing(_ textField: UITextField) // became first responder
    {

    }
    
    @available(iOS 2.0, *)
    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    {
        return true
    }
    
    @available(iOS 2.0, *)
    public func textFieldDidEndEditing(_ textField: UITextField) // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    {
        
    }
    
    @available(iOS 10.0, *)
    public func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) // if implemented, called in place of textFieldDidEndEditing:
    {
        
    }
    
    @available(iOS 2.0, *)
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool // return NO to not change text
    {
        return true
    }
    
    @available(iOS 2.0, *)
    public func textFieldShouldClear(_ textField: UITextField) -> Bool // called when clear button pressed. return NO to ignore (no notifications)
    {
        return true
    }
    
    @available(iOS 2.0, *)
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        return true
    }
 

  
    
}

