//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UIAttachment -  ghbdzprf
    // UISnapBehavior - снимок
    
    var squareView = UIView()
    var squareViewAnchor = UIView()
    var anchorView = UIView()
    var animator = UIDynamicAnimator()
    var attachmentBehavior: UIAttachmentBehavior?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createGestureRecognizer()
    
        creaeSmallSquare()
             createAnchorView()
        createAnimationAnBehavior()
    }
    
    //сщздаем квадрат
    func creaeSmallSquare(){
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        squareView.backgroundColor = UIColor.yellow
        squareView.center = self.view.center
        squareViewAnchor = UIView(frame: CGRect(x: 60, y: 0, width: 20, height: 20))
        squareViewAnchor.backgroundColor = UIColor.brown
        squareView.addSubview(squareViewAnchor)
        self.view.addSubview(squareView)
    }
    
    //view с точкой привязки
    func createAnchorView(){
        anchorView = UIView(frame: CGRect(x: 120, y: 120, width: 20, height: 20))
        anchorView.backgroundColor = UIColor.red
        self.view.addSubview(anchorView)
    }
    
    //создаем регистратор жеста панорамирования
    func createGestureRecognizer(){
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        view.addGestureRecognizer(panGestureRecognizer)
    }
    
    //создаем столкновение и прикрепление
    func createAnimationAnBehavior(){
        animator = UIDynamicAnimator(referenceView: view)
        //столкновения
        let collision = UICollisionBehavior(items: [squareView ])
        collision.translatesReferenceBoundsIntoBoundary = true
        // создает границы, за которые обхект не выпалет
        attachmentBehavior = UIAttachmentBehavior(item: squareView, attachedToAnchor: anchorView.center)
        animator.addBehavior(collision)
        animator.addBehavior(attachmentBehavior!)
    }
    
    // определяет, где палц и передает красный квадрат туда
    @objc func handlePan(param: UIPanGestureRecognizer){
       
        //передать локейшен пальца на вью
        let tapPoint = param.location(in: view)
        print(tapPoint)
        attachmentBehavior?.anchorPoint = tapPoint
        anchorView.center = tapPoint
        
        
        
    }
}


