//
//  ViewController.swift
//  bb
//
//  Created by Belka on 6/18/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tableViewControler = UITableViewController(style: .plain)
    var refresh = UIRefreshControl()
    
    var allTime = [Date]() //["Robbins", "Jobs", "Tanya Khiz"]
    var cellIdentifier = "Cell"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createTableView()
        self.refresh.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        view.addSubview(tableViewControler.tableView)
        tableViewControler.tableView.addSubview(refresh)
    }
    
    @objc func handleRefresh(){
        allTime.append(Date())
        refresh.endRefreshing()
        let indexPathNewRow = IndexPath(row: allTime.count - 1, section: 0)
        tableViewControler.tableView.insertRows(at: [indexPathNewRow], with: .automatic)
    }
    
    func createTableView(){
        tableViewControler.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableViewControler.tableView.delegate = self
        tableViewControler.tableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTime.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let date = allTime[indexPath.row]
        cell.textLabel?.text = "\(date)"
        
        return cell
    }
    
    
    
}

