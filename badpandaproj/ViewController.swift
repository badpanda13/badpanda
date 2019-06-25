//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    private var myProgressView = UIProgressView()
    private var myButton = UIButton()
    private var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createProgressView(progressView: myProgressView)
        createButton(button: myButton)
        createTimer()
    }
    
    //MARK: - Time
    func createTimer(){
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateProgressView), userInfo: nil, repeats: true)
    }
    //MARK: - Selector
    @objc func updateProgressView(){
        if myProgressView.progress != 1.0 {
            myProgressView.progress += 0.1 / 1.0
        } else if myProgressView.progress == 1.0 {
            UIView.animate(withDuration: 0.7, animations: {
                self.myButton.alpha = 1
                self.myButton.setTitle("загрузка завершена", for: .normal)
                self.myTimer.invalidate()
                })
        }
    }
    
    //MARK: -UI
    func createProgressView(progressView: UIProgressView){
        progressView.progressViewStyle = .bar
        progressView.frame = CGRect(x: view.center.x, y: view.center.y, width: 150, height: 50)
        progressView.setProgress(0.0, animated: true)
        progressView.progressTintColor = UIColor.green
        progressView.trackTintColor = UIColor.yellow
        progressView.center = view.center
        view.addSubview(progressView)
        
    }
    
    func createButton(button: UIButton){
        button.frame = CGRect(x: view.bounds.width/4, y: view.center.y, width: 150, height: 50)
        button.setTitle("Загрузка", for: .normal)
        button.alpha = 0.2
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .red
        view.addSubview(button)
        
    }
}

