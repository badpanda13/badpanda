//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
       
        self.view.addSubview(picker)
        picker.addTarget(self, action: #selector(datePickerChange(paramdatePicker:)), for: .valueChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func datePickerChange(paramdatePicker: UIDatePicker){
        if paramdatePicker.isEqual(self.picker) {
            print("dateChange :", paramdatePicker.date)
        }
    }
}

