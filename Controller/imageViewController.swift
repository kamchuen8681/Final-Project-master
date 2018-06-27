//
//  imageViewController.swift
//
//  Created by csie on 2018/5/4.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class imageViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
/*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destination as! MapViewController
            destinationController.restaurant = location
        }
    }
 */
    var phone = "NULL"
    var restaurantImageName = ""
    var names = "NULL"
    var restaurantNames = "NULL"
    var type = "NULL"
    var location = "NULL"
    var descriptio = "NULL"
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
            case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetaillconTextCell.self), for: indexPath) as! RestaurantDetaillconTextCell
            cell.iconImageView.image=UIImage(named: "phone")
            cell.shortTextLabel.text = phone
            return cell
            case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetaillconTextCell.self), for: indexPath) as! RestaurantDetaillconTextCell
            cell.iconImageView.image=UIImage(named: "map")
            cell.shortTextLabel.text = location
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetailTextCell.self), for: indexPath) as! RestaurantDetailTextCell
            cell.descriptionLabel.text = descriptio
            return cell

        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetailSeparatorCell.self), for: indexPath) as! RestaurantDetailSeparatorCell
            cell.titleLabel.text = "HOW TO GET THERE"
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetailMapCell.self), for: indexPath) as! RestaurantDetailMapCell
            print(location)
            cell.configure(location: location)
            return cell
        default:
            fatalError("Failed to instantiate the table view cell")
        }
    }
    
    @IBOutlet var headerView: RestarurantDetailHeaderView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        if restaurantImageName == "九芎_木"{
            names = "九芎 木"
            phone = "千屈菜科(Lythraceae)紫薇屬(Lagerstroemia)"
            restaurantNames = "九芎_木"
            type = "木"
            location = "台灣低、中海拔森林。"
            descriptio = "落葉大喬木，可達 20 公尺，樹皮褐色夾雜著白色的塊斑，十分光亮平滑，好像上過一層蠟。"
            
        }
        else if restaurantImageName == "九芎_果"{
            names = "九芎 果"
            phone = "千屈菜科(Lythraceae)紫薇屬(Lagerstroemia)"
            restaurantNames = "九芎_果"
            type = "果實"
            location = "台灣低、中海拔森林"
            descriptio = "蒴果長橢圓形，長 0.6~0.8 公分。種子小，但是有有狹翼，是長尾水青蛾幼蟲的食樹。"
            
        }
        else if restaurantImageName == "九芎_花"{
            names = "九芎 花"
            phone = "千屈菜科(Lythraceae)紫薇屬(Lagerstroemia)"
            restaurantNames = "九芎_花"
            type = "花"
            location = "台灣低、中海拔森林"
            descriptio = "圓錐花序頂生，花密生；萼鐘形，花瓣 6 枚，白色的花瓣皺縮，花絲長短不一，花數多而密；雄蕊多數，內 5~6 枚特長。"
            
        }
        else if restaurantImageName == "九芎_莖"{
            names = "九芎 莖"
            phone = "千屈菜科(Lythraceae)紫薇屬(Lagerstroemia)"
            restaurantNames = "九芎_莖"
            type = "莖"
            location = "台灣低、中海拔森林"
            descriptio = "落葉大喬木，可達 20 公尺，樹幹通直，樹皮褐色夾雜著白色的塊斑，十分光亮平滑，茶褐色，好像上過一層蠟；常會呈片狀剝落。"
            
        }
        else if restaurantImageName == "九芎_葉"{
            names = "九芎 葉"
            phone = "千屈菜科(Lythraceae)紫薇屬(Lagerstroemia)"
            restaurantNames = "九芎_葉"
            type = "葉"
            location = "台灣低、中海拔森林"
            descriptio = "葉具短柄，有的互生，有的對生，長橢圓形或卵形，先端銳形，基部為鈍形或近於圓形，全緣 1.5~4.8 公分，寬 1~2.5 公分。綠葉的邊緣平滑，嫩葉帶紅，葉背是淺綠色。"
            
        }
        else if restaurantImageName == "茄苳_莖皮"{
            names = "茄苳 莖皮"
            phone = "大戟科(Euphorbiaceae)重陽木屬(Bischofia)"
            restaurantNames = "茄苳_莖皮"
            type = "莖皮"
            location = "海拔1500公尺以下之山野或海邊"
            descriptio = "樹幹粗糙不平，樹幹會有瘤狀突起，赤竭色樹皮，會有層狀剝落。"
            
        }
        else if restaurantImageName == "茄苳_雄花序"{
            names = "茄苳 雄花序"
            phone = "大戟科(Euphorbiaceae)重陽木屬(Bischofia)"
            restaurantNames = "茄苳_雄花序"
            type = "雄花序"
            location = "海拔1500公尺以下之山野或海邊"
            descriptio = "雄花序，多分枝，雄花之萼片 5 枚，雄蕊 5 枚，花絲短，著生於退化雌蕊的周圍。"
            
        }
        else if restaurantImageName == "茄苳_葉"{
            names = "茄苳 葉"
            phone = "大戟科(Euphorbiaceae)重陽木屬(Bischofia)"
            restaurantNames = "茄苳_葉"
            type = "葉"
            location = "海拔1500公尺以下之山野或海邊"
            descriptio = "葉為三出複葉，互生；小葉緣有鋸齒，前端圓鈍，有尖的突出，表面平滑，有小波折狀，有葉柄，新葉紅色，有早落的托葉。"
            
        }
        else if restaurantImageName == "茄苳_實"{
            names = "茄苳 實"
            phone = "大戟科(Euphorbiaceae)重陽木屬(Bischofia)"
            restaurantNames = "茄苳_實"
            type = "果實"
            location = "海拔1500公尺以下之山野或海邊"
            descriptio = "果實為漿果，徑 0.8~1.5 公分，未成熟時是青綠色，成熟時則為褐色；內有種子 3~4 枚，長圓形。果成熟時期，有如一串串葡萄掛於枝頂，極為壯觀。果期 8月~翌年 3 月。"
            
        }
        else if restaurantImageName == "茄苳_雌花序"{
            names = "茄苳 雌花序"
            phone = "大戟科(Euphorbiaceae)重陽木屬(Bischofia)"
            restaurantNames = "茄苳_雌花序"
            type = "雌花序"
            location = "海拔1500公尺以下之山野或海邊"
            descriptio = "雌花序，分枝較小，常退化成單總狀花序，雌花萼片卵形，早落性；雌蕊 1 枚，子房 3~4 室，花柱 3~4 枚。"
            
        }
        else if restaurantImageName == "欖仁樹_幼株"{
            names = "欖仁樹 幼株"
            phone = "使君子科(Combretaceae)欖仁屬(Terminalia)"
            restaurantNames = "欖仁樹_幼株"
            type = "幼株"
            location = "恆春半島、蘭嶼、小琉球、綠島及澎湖"
            descriptio = "落葉大喬木，株高 15~25公尺，側枝水平輪生，形成平頂傘狀樹冠，老樹根生有顯著之板根。"
            
        }
        else if restaurantImageName == "欖仁樹_花"{
            names = "欖仁樹 花"
            phone = "使君子科(Combretaceae)欖仁屬(Terminalia)"
            restaurantNames = "欖仁樹_花"
            type = "花"
            location = "恆春半島、蘭嶼、小琉球、綠島及澎湖"
            descriptio = "雌雄同株，花多數，小形，淡黃色或黃綠色，開放時徑 0.5~0.6 公分，雜性花，呈腋生的穗狀花序排列，雄花居頂，雌花在下；花序長 6~10 公分，斜上昇狀，光滑無毛；花萼鐘形，略呈花冠狀，長 0.3~0.5 公分，外面光滑無毛，內面有毛茸，先端裂片 5 枚(4 枚較少見)，裂片多為早落性；無花瓣；雄蕊 10 枚，排成 2 列，花絲細長，花藥 2 室；子房上位，1 室，胚珠 2~3 枚。"
            
        }
        else if restaurantImageName == "欖仁樹_青實"{
            names = "欖仁樹 青實"
            phone = "使君子科(Combretaceae)欖仁屬(Terminalia)"
            restaurantNames = "欖仁樹_青實"
            type = "青實"
            location = "恆春半島、蘭嶼、小琉球、綠島及澎湖"
            descriptio = "可藥用，種子：清熱解毒。治咽喉腫痛，痢疾，腫毒；可食用：種子之種仁，有芳香味，食之味佳；可供搾油。"
            
        }
        else if restaurantImageName == "欖仁樹_莖"{
            names = "欖仁樹 莖"
            phone = "使君子科(Combretaceae)欖仁屬(Terminalia)"
            restaurantNames = "欖仁樹_莖"
            type = "莖"
            location = "恆春半島、蘭嶼、小琉球、綠島及澎湖"
            descriptio = "落葉大喬木，株高可達 25 公尺，徑 60~100 公分，老樹根生有顯著之板根，具有多數枝條；側枝光滑無毛茸，水平輪生，形成平頂傘狀樹冠。"
            
        }
        else if restaurantImageName == "欖仁樹_黑實"{
            names = "欖仁樹 黑實"
            phone = "使君子科(Combretaceae)欖仁屬(Terminalia)"
            restaurantNames = "欖仁樹_黑實"
            type = "黑實"
            location = "恆春半島、蘭嶼、小琉球、綠島及澎湖"
            descriptio = "果實為核果，卵形或扁橢圓形，略扁平，長 5~6 公分，徑 4~4.5 公分，有 2 條縱向的稜或龍骨突起，初為綠色後變為黑色。"
            
        }
        headerView.headerImageView.image = UIImage(named: restaurantImageName)
        headerView.nameLabel.text = names
        headerView.typeLabel.text = type

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
