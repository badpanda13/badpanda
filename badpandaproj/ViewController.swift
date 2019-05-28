//
//  ViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/27/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        //подписаться
        picker.dataSource = self
        picker.delegate = self
        
        self.view.addSubview(picker)
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    
}

extension ViewController: UIPickerViewDataSource {
    
    //сколько компонентов выводить
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //сколько строк в компоненте
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row = \(row)"
        return result
    }
}
