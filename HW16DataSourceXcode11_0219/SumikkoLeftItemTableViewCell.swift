//
//  SumikkoLeftItemTableViewCell.swift
//  HW16DataSourceXcode11_0219
//
//  Created by min-chia on 2019/2/20.
//  Copyright © 2019 min-chia. All rights reserved.
//

import UIKit

class SumikkoLeftItemTableViewCell: UITableViewCell {
    @IBOutlet weak var leftIv: UIImageView!
    @IBOutlet weak var LeftLb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
