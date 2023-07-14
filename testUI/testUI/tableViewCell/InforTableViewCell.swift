//
//  InforTableViewCell.swift
//  testUI
//
//  Created by Anh Nguyễn on 13/07/2023.
//

import UIKit

class InforTableViewCell: UITableViewCell{

    @IBOutlet weak var viewLayout: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imageDownup: UIImageView!
    @IBOutlet weak var btndownup: UIButton!
    @IBOutlet weak var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        view.clipsToBounds = true
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMinYCorner]
        btndownup.setTitle("", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }}
