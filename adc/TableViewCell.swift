//
//  TableViewCell.swift
//  adc
//
//  Created by tran duc anh on 10/10/18.
//  Copyright © 2018 tran duc anh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var numberOne: UILabel!
    @IBOutlet weak var numberTwo: UILabel!
    
}
