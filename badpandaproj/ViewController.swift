//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var view1: UIView{
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false;
//        view.frame = CGRect(x: 0, y: 0, width: 120, height: 120  )
//        view.backgroundColor = UIColor.red
//        return view
//    }
//

        var viewRed = UIView()
    var viewBlue = UIView()
     var viewGreen = UIView()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createView(color: UIColor.red, view: viewRed)
        createView(color: UIColor.blue, view: viewBlue)
        createView(color: UIColor.green, view: viewGreen)
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        
        createViewRedConstraints()
        createViewBlueConstraints()
        createViewGreenConstraints()

    }
    func createView(color: UIColor, view: UIView){
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = color
        
    }
    
    func createViewRedConstraints(){
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    func createViewBlueConstraints(){
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

    func createViewGreenConstraints(){
          viewGreen.rightAnchor.constraint(equalTo: viewBlue.rightAnchor).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewRed.leftAnchor).isActive = true
        viewGreen.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -20).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 100).isActive = true

        
    }
}


