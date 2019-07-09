//
//  MyTableViewCell.swift
//  badpandaproj
//
//  Created by Belka on 7/9/19.
//  Copyright © 2019 Belka. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func refresh(_ model:Model){
        nameLabel.text = model.name
        detailLabel.text = model.prof
        
    }

}
