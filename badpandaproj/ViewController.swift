//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //UICollisionBehavior - обнаружение столкновений
    //UIGravityBehavior - имитация гравитации
    //UIPushBehavior - реагирует на толчки
    //UISnapBehavior - крепит view к определенной точке

    var animator = UIDynamicAnimator()
    var squareView = UIView()
    var pushBehavior = UIPushBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
       createGestureRecognixer()
        createSmallSquareView()
        createAnimationAndBehavior()
    }
    
    //создаем квадрат
    func createSmallSquareView(){
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80 ))
        squareView.backgroundColor = UIColor.green
        squareView.center = view.center
        view.addSubview(squareView)
    }
    
//    создаем жест
    func createGestureRecognixer(){
        let tapGestureRecognixer = UITapGestureRecognizer(target: self, action: #selector(hendlerTap))
        view.addGestureRecognizer(tapGestureRecognixer)
    }
    
    //создадим столкновение
    func createAnimationAndBehavior(){
        animator = UIDynamicAnimator(referenceView: view)
        //создаем столкновение
        let collision = UICollisionBehavior(items: [squareView])
        collision.translatesReferenceBoundsIntoBoundary = true
        pushBehavior = UIPushBehavior(items: [squareView], mode: UIPushBehavior.Mode.continuous)
        animator.addBehavior(collision)
        animator.addBehavior(pushBehavior)
    }
    
    
    @objc func hendlerTap(paramTap: UITapGestureRecognizer){
        //получаем угол view
        let tapPoint: CGPoint = paramTap.location(in: view)
        let squareViewCenterPoint: CGPoint = squareView.center
        //определение угла между двумя точками: arc tangent 2(( p1.x - p2.x), (p1.y - p2.y))
        let deltaX: CGFloat = tapPoint.x - squareViewCenterPoint.x
        let deltaY: CGFloat = tapPoint.y - squareViewCenterPoint.y
        let angle: CGFloat = atan2(deltaY, deltaX)
        pushBehavior.angle = angle
        
        let distanceBetweenPints:CGFloat = sqrt(pow(tapPoint.x - squareViewCenterPoint.x, 2.0) + pow(tapPoint.y - squareViewCenterPoint.y, 2.0))
        pushBehavior.magnitude = distanceBetweenPints / 200
    }
    
}


