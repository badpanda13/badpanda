//
//  SecondViewController.swift
//  badpandaproj
//
//  Created by Belka on 5/29/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second vc"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack(){
      //  self.navigationController?.popViewController(animated: true)
        //а тперь то же самое, но долго, чтобы понять, как все это работает
        //Получаем текущий массив вью контроллеров
        var curentControllersArray = self.navigationController?.viewControllers
        
        //удаляем последний котроллер в этом массиве, остался один котроллер, наш первый
        curentControllersArray?.removeLast()
        
        //Присвоим 
        if let newController = curentControllersArray {
            self.navigationController?.viewControllers = newController
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
