//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{


    var myTableView = UITableView()
    let identifier = "myCell"
    var array = ["1","2","3","4","5","6","7","8","9"]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        self.myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(myTableView)
}
    //MARK: -UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0: return 3
        case 1: return 1
        case 2: return 2
        default: break
        }
        return 0
       // return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = "section \(indexPath.section) - row \(indexPath.row)"
        
        switch indexPath.section{
        case 0:
            cell.backgroundColor = UIColor.red
            cell.accessoryType = .checkmark
        case 1:
            cell.backgroundColor = UIColor.blue
            cell.accessoryType = .detailButton
        case 2: cell.backgroundColor = UIColor.yellow
        default: break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("Accessory path = ", indexPath)
        
        let ounerCell = tableView.cellForRow(at: indexPath)
        print("Cell table =", ounerCell?.textLabel?.text ?? nil!)
    }
    
    //MARK: -UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }

    
}

