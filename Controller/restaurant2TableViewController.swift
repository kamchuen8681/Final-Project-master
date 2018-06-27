//
//  restaurant2TableViewController.swift
//
//  Created by csie on 2018/5/4.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class restaurant2TableViewController: UITableViewController {
    var names = [""]
    var restaurantNames = [""]
    var restaurantImageName = ""
    let one = "九芎"
    let two = "茄苳"
    let three = "欖仁樹"

    override func viewDidLoad() {
        super.viewDidLoad()
        if restaurantImageName == one {
            names = ["九芎_木", "九芎_果", "九芎_花","九芎_莖", "九芎_葉"]
            restaurantNames = ["九芎_木", "九芎_果", "九芎_花","九芎_莖", "九芎_葉"]
        }
        else if restaurantImageName == two {
            names = ["茄苳_莖皮", "茄苳_雄花序", "茄苳_葉", "茄苳_實", "茄苳_雌花序"]
            restaurantNames = ["茄苳_莖皮", "茄苳_雄花序", "茄苳_葉", "茄苳_實", "茄苳_雌花序"]
        }
         else if restaurantImageName ==  three {
            names = ["欖仁樹_幼株", "欖仁樹_花", "欖仁樹_青實","欖仁樹_莖", "欖仁樹_黑實"]
            restaurantNames = ["欖仁樹_幼株", "欖仁樹_花", "欖仁樹_青實","欖仁樹_莖", "欖仁樹_黑實"]
        }
        else{
            names = ["九芎", "九芎", "九芎"]
            restaurantNames = ["九芎", "欖仁樹","九芎"]
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell2"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! restaurant2TableViewCell
        cell.nameLabel?.text=restaurantNames[indexPath.row]
        cell.thumbnailImageView?.image = UIImage(named: names[indexPath.row])
        // Configure the cell...

        return cell
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
        if segue.identifier == "imageview"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! imageViewController
                destinationController.restaurantImageName = names[indexPath.row]
            }
        }
    

}
}
