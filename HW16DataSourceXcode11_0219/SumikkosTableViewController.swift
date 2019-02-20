//
//  SumikkosTableViewController.swift
//  HW16DataSourceXcode11_0219
//
//  Created by min-chia on 2019/2/19.
//  Copyright © 2019 min-chia. All rights reserved.
//

import UIKit

class SumikkosTableViewController: UITableViewController {

    var sumikkos = [Sumikko(name: "貓貓", imageName: "Cat", intro: "害羞、怯懦的貓。常常躲在角落裡，背對大家抓牆壁。", mainClass: 0),Sumikko(name: "白熊", imageName: "Bear", intro: "從北方逃跑而來怕冷又怕生的一隻熊。", mainClass: 0),Sumikko(name: "企鵝？", imageName: "Penguin", intro: "對自己是不是企鵝 不太有把握。", mainClass: 0),Sumikko(name: "炸豬排", imageName: "Pork", intro: "炸豬排的邊邊。瘦肉1%加上肥油99%。", mainClass: 0),Sumikko(name: "恐龍", imageName: "Dinosaur", intro: "其實是倖存下來的一種恐龍。因為怕被抓到，所以假冒蜥蜴。", mainClass: 0),Sumikko(name: "包袱巾", imageName: "Towel", intro: "面無表情（但被珍惜時會露出淺淺的微笑） 北極熊的行李。佔位時常用到。", mainClass: 1),Sumikko(name: "小草", imageName: "Glass", intro: "用根部走路。擁有一個夢想。", mainClass: 1),Sumikko(name: "粉圓", imageName: "TapiocaBall", intro: "面無表情。奶茶先被喝光，因為不好吸所以被吃剩下來的。", mainClass: 1),Sumikko(name: "炸蝦尾", imageName: "Tail", intro: "面無表情。因為太硬所以被吃剩下來。", mainClass: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sumikkos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if sumikkos[indexPath.row].mainClass == 0 {
            let sumikkoLeftItemCell = tableView.dequeueReusableCell(withIdentifier: "sumikkoLeftItemCell", for: indexPath) as! SumikkoLeftItemTableViewCell
            sumikkoLeftItemCell.leftIv.image = UIImage(named: sumikkos[indexPath.row].imageName)
            sumikkoLeftItemCell.LeftLb.text = sumikkos[indexPath.row].name
            return sumikkoLeftItemCell
        }else{
            let sumikkoRightItemCell = tableView.dequeueReusableCell(withIdentifier: "sumikkoRightItemCell", for: indexPath) as! SumikkoRightItemTableViewCell
            sumikkoRightItemCell.rightItemImageView.image = UIImage(named: sumikkos[indexPath.row].imageName)
            sumikkoRightItemCell.rightItemLabel.text = sumikkos[indexPath.row].name
            return sumikkoRightItemCell
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row = tableView.indexPathForSelectedRow?.row
        let sumikkoDetailVC = segue.destination as! SumikkoDetailViewController
        sumikkoDetailVC.sumikko = sumikkos[row!]        
    }
 

}
