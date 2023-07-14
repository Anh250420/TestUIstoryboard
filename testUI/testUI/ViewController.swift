
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var LayoutView: UIView!
    @IBOutlet weak var viewLayout: UIView!
    @IBOutlet weak var tableViewInfor: UITableView!
    @IBOutlet weak var btnTym: UIButton!
    
    var ischeck: Bool = true
    var sections = sectionsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewInfor.register(UINib(nibName: "InforTableViewCell", bundle: nil), forCellReuseIdentifier: "InforTableViewCell")
        tableViewInfor.dataSource = self
        tableViewInfor.delegate = self
        LayoutView.clipsToBounds = true
        LayoutView.layer.cornerRadius = 30
        LayoutView.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }
    
    @IBAction func selectTym(_ sender: Any) {
        ischeck = !ischeck
        if ischeck {
            btnTym.setImage(UIImage(named: "Favorite"), for: .normal)
        } else {
            btnTym.setImage(UIImage(named: "Favorite-1"), for: .normal)
        }
    }
    
    @IBAction func next(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TopViewController") as! TopViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewInfor.dequeueReusableCell(withIdentifier: "InforTableViewCell", for: indexPath) as! InforTableViewCell
        let data: Section = self.sections[indexPath.row]
        cell.lblName.text = data.name
        switch indexPath.row {
        case 0:
            cell.view.backgroundColor = UIColor.colorFromHex("#E6ECEC")
            cell.viewLayout.backgroundColor = UIColor.colorFromHex("#CAD7D7")
        case 1:
            cell.view.backgroundColor = UIColor.colorFromHex("#CAD7D7")
            cell.viewContent.backgroundColor = UIColor.colorFromHex("#E6ECEC")
            cell.viewLayout.backgroundColor = UIColor.colorFromHex("#B2C6C6")
        case 2:
            cell.view.backgroundColor = UIColor.colorFromHex("#B2C6C6")
            cell.viewContent.backgroundColor = UIColor.colorFromHex("#CAD7D7")
            cell.viewLayout.backgroundColor = UIColor.colorFromHex("#B2C6C6")
        default:
            break
        }
        return cell
    }
}

extension UIColor {
    
    static func rgbColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    static func colorFromHex(_ hex: String) -> UIColor {
        
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.magenta
        }
        
        var rgb: UInt32 = 0
        Scanner.init(string: hexString).scanHexInt32(&rgb)
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16)/255.0,
                            green: CGFloat((rgb & 0x00FF00) >> 8)/255.0,
                            blue: CGFloat(rgb & 0x0000FF)/255.0,
                            alpha: 1.0)
    }
}
