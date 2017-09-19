//
//  MSNewsCustomTableViewCell.swift
//  MSNews
//
//  Created by Rick on 2017/9/19.
//  Copyright © 2017年 Rick. All rights reserved.
//

import UIKit

class MSNewsCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var SeconeLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
