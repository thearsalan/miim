//
//  TableViewCell.swift
//  miim
//
//  Created by Arsalan Yarveisi on 12/23/15.
//  Copyright © 2015 Arsalan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var planTitle: UILabel!
    @IBOutlet weak var planDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
