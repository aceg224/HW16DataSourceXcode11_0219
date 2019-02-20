//
//  SumikkoDetailViewController.swift
//  HW16DataSourceXcode11_0219
//
//  Created by min-chia on 2019/2/20.
//  Copyright © 2019 min-chia. All rights reserved.
//

import UIKit

class SumikkoDetailViewController: UIViewController {

    @IBOutlet weak var sumikkoIV: UIImageView!
    @IBOutlet weak var sumikkoIntroLb: UILabel!
    @IBOutlet weak var sumikkoNameLb: UILabel!
    var sumikko:Sumikko?

    override func viewDidLoad() {
        super.viewDidLoad()
        sumikkoIV.image = UIImage(named: sumikko?.imageName ?? "No")
        sumikkoNameLb.text = sumikko?.name
        sumikkoIntroLb.text = sumikko?.intro
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
