//
//  DetailViewController.swift
//  badpandaproj
//
//  Created by Belka on 7/10/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!{
        didSet{
            guard let image = menu?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel! {
        didSet{
            nameLabel.text = menu?.name
        }
    }
    
    var menu: Menu?
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 

}
