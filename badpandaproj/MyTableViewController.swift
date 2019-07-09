//
//  MyTableViewController.swift
//  badpandaproj
//
//  Created by Belka on 7/9/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var itemArray = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let item = Model(name: "Tanya Khiz", prof: "designer")
        itemArray.append(item)
        
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell{
            let item = itemArray[indexPath.row]
            
            //  Configure the cell...

            cell.refresh(item)
            return cell
        }
        return UITableViewCell()
    }
 

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
