//
//  TopViewController.swift
//  testUI
//
//  Created by Anh Nguyễn on 13/07/2023.
//

import UIKit

class TopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Bank: UIButton!
    @IBOutlet weak var topTableView: UITableView!
    var listPhim = ListDataPhim
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topTableView.register(UINib(nibName: "TopTableViewCell", bundle: nil), forCellReuseIdentifier: "TopTableViewCell")
        topTableView.dataSource = self
        topTableView.delegate = self
        Bank.setTitle("", for: .normal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPhim.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = topTableView.dequeueReusableCell(withIdentifier: "TopTableViewCell", for: indexPath) as! TopTableViewCell
        let data: dataPhim = self.listPhim[indexPath.row]
        cell.lblNamePhim.text = data.namePhim
        cell.imagePhim.image = UIImage(named: data.imagePhim)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return topTableView.frame.width * 0.787
    }

    @IBAction func BackHome(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
