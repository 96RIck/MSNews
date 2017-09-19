
//
//  MSNewsTableViewController.swift
//  MSNews
//
//  Created by Rick on 2017/9/19.
//  Copyright © 2017年 Rick. All rights reserved.
//

import UIKit

class MSNewsTableViewController: UITableViewController {
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var headImage: UIImageView!
    
    // MARK: - SourceInit
    var names = ["Nike","Owl","Eggs","Ps4","Radio","SnowMan","Woman","Red","Umberlla","China"]
    var imageNameArr = [#imageLiteral(resourceName: "p1"),#imageLiteral(resourceName: "p2"),#imageLiteral(resourceName: "p3"),#imageLiteral(resourceName: "p4"),#imageLiteral(resourceName: "p5"),#imageLiteral(resourceName: "p6"),#imageLiteral(resourceName: "p7"),#imageLiteral(resourceName: "p8"),#imageLiteral(resourceName: "p9"),#imageLiteral(resourceName: "p10")]
    
    var SecondLabelStr = ["sport shoes","animal","food","game machine","music machine","snow","people","light","tool","place"]
    var thirdLabelStr = ["鞋子","猫头鹰","煎蛋","ps4","收音机","雪人","女人","红绿灯","雨伞","中国"]
    
    //MARK: - Main
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MSNewsCustomTableViewCell
        
        cell.nameLabel.text = names[indexPath.row]
        cell.SeconeLabel.text = SecondLabelStr[indexPath.row]
        cell.thirdLabel.text = thirdLabelStr[indexPath.row]
        cell.cellImage.image = imageNameArr[indexPath.row]
        cell.cellImage.layer.cornerRadius = cell.cellImage.frame.size.height/2
        cell.cellImage.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("点击第",indexPath.section,"组，第",indexPath.row,"行")
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
