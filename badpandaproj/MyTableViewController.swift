//
//  MyTableViewController.swift
//  badpandaproj
//
//  Created by Belka on 7/9/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var notificationSwitch: UISwitch!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load
        if let name = userDefault.object(forKey: "name"){
            nameTextField.text = name as? String
        }
        if let lastName = userDefault.object(forKey: "lastName"){
            lastNameTextField.text = lastName as? String
        }
        let notificationSwitchValue = userDefault.bool(forKey: "switch")
        notificationSwitch.setOn(notificationSwitchValue, animated: true)
        
        let genderSegmentValue = userDefault.integer(forKey: "segment")
        genderSegment.selectedSegmentIndex = genderSegmentValue
        
        
    }

    @IBAction func saveButton(_ sender: Any) {
        userDefault.setValue(nameTextField.text, forKey: "name")
        userDefault.setValue(lastNameTextField.text, forKey: "lastName")
        userDefault.set(notificationSwitch.isOn, forKey: "switch")
        userDefault.set(genderSegment.selectedSegmentIndex, forKey: "segment")
        print("произошло сохранение")
        lastNameTextField.resignFirstResponder() //чтобы сворачивалась клавиатура
        
    }
    
  
}
