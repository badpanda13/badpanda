//
//  MyViewController.swift
//  badpandaproj
//
//  Created by Belka on 6/25/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class MyViewController: UIPageViewController {

    var cars = [CarHelper]()
    let bmw = UIImage(named: "2.jpg")
    let audi = UIImage(named: "1.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Cars"
        
        let firstCar = CarHelper(name:"Car - BMW", image: bmw!)
        let lastCar = CarHelper(name: "Car - audi", image: audi!)
        cars.append(firstCar)
        cars.append(lastCar)
        
    }
    
    //MARK: -create vc
   lazy var arrayCarViewControllers: [CarViewController] = {
       var carVC = [CarViewController]()
        for car in cars {
            carVC.append(CarViewController(carWith: car))
        }
    return carVC
    }()

    //MARK: -init UIPageViewController
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation, options: nil )
        self.view.backgroundColor = UIColor.green
        self.dataSource = self
        self.delegate = self
        setViewControllers([arrayCarViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MyViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return cars.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        print("before")
        guard viewController is CarViewController else {
            return nil}

        if let index = arrayCarViewControllers.firstIndex(of: viewController as! CarViewController){
            //  index(of: viewController as! CarViewController) {
            if index > 0 {
                return arrayCarViewControllers[index - 1]
                
            }}
        return nil
    }

    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        print("forward")
        guard viewController is CarViewController else {
               print("error")
            return nil}
        
        if let index = arrayCarViewControllers.firstIndex(of: viewController as! CarViewController){
            //  index(of: viewController as! CarViewController) {
            if index >= 0 {
                
                return arrayCarViewControllers[index + 1]
                
            }}
        return nil
    
    }
}

