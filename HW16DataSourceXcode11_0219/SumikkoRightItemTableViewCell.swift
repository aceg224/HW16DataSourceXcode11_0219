//
//  SumikkoRightItemTableViewCell.swift
//  HW16DataSourceXcode11_0219
//
//  Created by min-chia on 2019/2/20.
//  Copyright © 2019 min-chia. All rights reserved.
//

import UIKit

class SumikkoRightItemTableViewCell: UITableViewCell {
    @IBOutlet weak var rightItemImageView: UIImageView!
    @IBOutlet weak var rightItemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
