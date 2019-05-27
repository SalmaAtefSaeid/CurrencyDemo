//
//  CurrencyTableViewCell.swift
//  CurrencyExchangeDemo
//
//  Created by JETS Mobile Lab-12 on 5/27/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {

    @IBOutlet var currenyLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
