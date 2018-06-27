//
//  restaurantDetailViewController.swift
//  ios-mid
//
//  Created by csie on 2018/4/20.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class restaurantDetailViewController: UIViewController{
    var restaurantNames = ["小灰蝶", "三線蝶","鳳蝶"]
    var names = ["小灰蝶-1", "三線蝶-1", "鳳蝶-1"]
    //var restaurantImageName = ""
   // @IBOutlet var restaurantImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        //super.viewDidLoad()
       // restaurantImageView.image = UIImage(named: restaurantImageName)
        //NSLog(restaurantImageName);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let callIdentifier = "call"
        let call = tableView.dequeueReusableCell(withIdentifier: callIdentifier, for: indexPath) as! restauranTableViewCell
        
        // Configure the cell...
        call.nameLabel?.text = restaurantNames[indexPath.row]
        //call.thumbnailImageView?.image = UIImage(named: names[indexPath.row])
        return call
    }
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
