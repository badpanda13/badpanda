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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createView(color: UIColor.red, view: viewRed)
        createView(color: UIColor.blue, view: viewBlue)
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        
        let viewFL = ["viewRed":viewRed, "viewBlue":viewBlue]
        let metrics = ["height":100, "width":view.bounds.width / 3, "top":view.bounds.height / 2]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewRed(height)]|", options:[], metrics: metrics, views: viewFL))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewBlue(height)]|", options:[], metrics: metrics, views: viewFL))
       view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[viewBlue(width)]-(50)-[viewRed(width)]-|", options:[], metrics: metrics, views: viewFL))
      //  view.addSubview(view1)
     //    view.addSubview(view2)
     //   createView1Constraint()
      //  createView2Constraint()
    }
    func createView(color: UIColor, view: UIView){
        //view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        //view.frame = CGRect(x: 0, y: 100, width: 120, height: 10  )
        view.backgroundColor = color
        
    }
//    func createView1Constraint(){
////        NSLayoutConstraint(item: view1, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1, constant: 0).isActive = true
//           //     NSLayoutConstraint(item: view1, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
//        NSLayoutConstraint(item: view1, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1, constant: 0).isActive = true
//        NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1, constant: 80).isActive = true
//        NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80).isActive = true
//    }
    
//    func createView2Constraint(){
//        NSLayoutConstraint(item: view2, attribute: .centerX, relatedBy: .equal, toItem: view1, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
//        NSLayoutConstraint(item: view2, attribute: .bottom, relatedBy: .equal, toItem: view1, attribute: .top, multiplier: 1, constant: -8).isActive = true
//        NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100).isActive = true
//        NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100).isActive = true
//    }
}


