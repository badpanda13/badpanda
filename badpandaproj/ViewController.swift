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
 //   let squareView = UIView()
    var animator = UIDynamicAnimator()
    var squareView = [UIDynamicItem]()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let numberOfView = 2
        squareView.reserveCapacity(numberOfView)
        var colors = [UIColor.red, UIColor.green]
        var currentCenterPoint: CGPoint = view.center
        let eachViewSize = CGSize(width: 50, height: 50)
        
        for counter in 0..<numberOfView {
            let newView = UIView(frame: CGRect(x: 0, y: 0, width: eachViewSize.width, height: eachViewSize.height))
            newView.backgroundColor = colors[counter]
            newView.center = currentCenterPoint
            currentCenterPoint.y += eachViewSize.height + 10
            view.addSubview(newView)
            squareView.append(newView)
        }
        
        animator = UIDynamicAnimator(referenceView: view)
        
        //Создадим тяготение
        let gravity = UIGravityBehavior(items: squareView)
        animator.addBehavior(gravity)
        
        //реализуем столкновение
        let collision = UICollisionBehavior(items: squareView)
        collision.translatesReferenceBoundsIntoBoundary = true //нижняя граница вью будет сдерживать наши вьюшки
        collision.addBoundary(withIdentifier: "bottomBoundary" as NSCopying, from: CGPoint(x: 0, y: view.bounds.size.height - 100), to: CGPoint(x: view.bounds.size.width, y: view.bounds.size.height - 100))
        
        animator.addBehavior(collision)
        collision.collisionDelegate = self
        
        /* создаем зеленый кубик и от под гравитацией падает
            let squareView = UIView()
        //создаем квадрат
        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        squareView.backgroundColor = UIColor.green
        squareView.center = self.view.center
        view.addSubview(squareView)
        
        //создаем аниматор и тяготение
        animator = UIDynamicAnimator(referenceView: view)
        let gravity = UIGravityBehavior(items: [squareView])
        animator.addBehavior(gravity)
         */
    }
}



//когда кубик сталкивается, он изменяется и пропадает
    extension ViewController: UICollisionBehaviorDelegate {
        func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint) {
            let indentifier = identifier as? String
            let kbottomBoundary = "bottomBoundary"
            if indentifier == kbottomBoundary {
                
                UIView.animate(withDuration: 1.0, animations: {
                    let view = item as? UIView
                    view?.backgroundColor = UIColor.blue
                    view?.alpha = 0.0
                    view?.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                    
                }, completion: {(finished) in
                    let view = item as? UIView
                    behavior.removeItem(item)
                    view?.removeFromSuperview()
                    
                })
            }
        
        }
    }


