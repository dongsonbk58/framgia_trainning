//
//  CustomTableViewCell.swift
//  Lession5
//
//  Created by Nguyen Dong Son on 3/21/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var labelcustom: UILabel!
    @IBOutlet weak var imagecustom: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


