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
        
        let image1 = UIImage(named: "1.jpg")
         let image2 = UIImage(named: "2.jpg")
         let image3 = UIImage(named: "3.jpg")
        let myScrollViewRect = self.view.bounds
        myScrollView = UIScrollView(frame: myScrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: myScrollViewRect.size.width * 3, height: myScrollViewRect.size.height)
     
        
        var imageViewRect = self.view.bounds
        let imageView1 = self.newImageViewWithImage(paramImage: image1!, paramFrame: imageViewRect)
        imageViewRect.origin.x += imageViewRect.size.width
        myScrollView.addSubview(imageView1)
         let imageView2 = self.newImageViewWithImage(paramImage: image2!, paramFrame: imageViewRect)
        imageViewRect.origin.x += imageViewRect.size.width
        myScrollView.addSubview(imageView2)
         let imageView3 = self.newImageViewWithImage(paramImage: image3!, paramFrame: imageViewRect)
         myScrollView.addSubview(imageView3)
        
           self.view.addSubview(myScrollView)
        
    }
    
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}

