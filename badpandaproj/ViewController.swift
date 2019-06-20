//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    var myScrollView = UIScrollView()
    var myImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageToLoad = UIImage(named: "1.jpg")
        myImageView = UIImageView(image: imageToLoad)
        myScrollView = UIScrollView(frame: self.view.bounds)
        myScrollView.addSubview(myImageView)
        myScrollView.contentSize = self.myImageView.bounds.size
        myScrollView.delegate = self
        self.view.addSubview(myScrollView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Начинается прокрутка")
        print(scrollView.contentOffset.y)
        self.myScrollView.alpha = 0.50
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("Вызывается после прокрутки")
        self.myScrollView.alpha = 1.0
    }
  
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("Гарантирует, что вернет альфа 1")
          self.myScrollView.alpha = 1.0 
    }
}

