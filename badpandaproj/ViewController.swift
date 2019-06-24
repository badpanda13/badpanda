//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var back: UIToolbar!
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activityIcon: UIActivityIndicatorView!
    @IBOutlet weak var refresh: UIToolbar!
    @IBOutlet weak var forward: UIToolbar!
    let application = UIApplication.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myUrl = URL(string: "https://www.google.com/") {
       // if let myPdf = Bundle.main.url(forResource: "rules", withExtension: "pdf") {
          let request = URLRequest(url: myUrl)
          //  let request = URLRequest(url: myPdf)
            webView.loadRequest(request)
        }
        
    }
    
    //MARK: -Activity
    func isWorkIndicator(isAnimated: Bool, indacator: UIActivityIndicatorView){
        application.isNetworkActivityIndicatorVisible = isAnimated
        if isAnimated {
            activityIcon.startAnimating()
            activityIcon.isHidden = false
        } else {
            activityIcon.stopAnimating()
            activityIcon.isHidden = true
        }
        
        //однако в уроке этот метод использовался в деприкетед методах, которые я не могу использовать
    }
    
    //MARK: -aCTIONS
    @IBAction func doRefresh(_ sender: Any) {
    }
    
    @IBAction func goBack(_ sender: Any) {
        if(webView.canGoBack){
            webView.goBack()
        }
    }
    
    
    @IBAction func goForward(_ sender: Any) {
        if(webView.canGoForward){
            webView.goForward()
        }
    }
}

