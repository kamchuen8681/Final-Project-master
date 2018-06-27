//
//  RestaurantDetaillconTextCell.swift
//
//  Created by csie on 2018/5/31.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class RestaurantDetaillconTextCell: UITableViewCell {

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var shortTextLabel: UILabel!{
        didSet {
            shortTextLabel.numberOfLines = 0
    }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
