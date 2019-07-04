//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UISnapBehavior - делает снимок
    
    var squareView = UIView()
    var animator = UIDynamicAnimator()
    var snapBehavior: UISnapBehavior?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createGestureRecognizer()
        createSquare()
        createAnimatorBehavior()
        
    }
    
    func createGestureRecognizer(){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func createSquare(){
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        squareView.center = self.view.center
        squareView.backgroundColor = UIColor.green
        view.addSubview(squareView)
    }
    
    func createAnimatorBehavior(){
        animator = UIDynamicAnimator(referenceView: view)
        let collision = UICollisionBehavior(items: [squareView])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        //зацеп
        snapBehavior = UISnapBehavior(item: squareView, snapTo: squareView.center)
        snapBehavior?.damping = 0.5
        animator.addBehavior(snapBehavior!)
        
    }
    
    @objc func handleTap(param: UITapGestureRecognizer){
        //получает угол между точкой касания и view
        let tapPoint = param.location(in: view)
        if snapBehavior != nil {
            animator.removeBehavior(snapBehavior!)
            
        }
        snapBehavior = UISnapBehavior(item: squareView, snapTo: tapPoint)
        snapBehavior?.damping = 0.5 //средняя осциляция
        animator.addBehavior(snapBehavior!)
        
        
        
    }
}


