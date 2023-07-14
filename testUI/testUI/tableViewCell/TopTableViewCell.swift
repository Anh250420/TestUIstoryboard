//
//  TopTableViewCell.swift
//  testUI
//
//  Created by Anh Nguyễn on 13/07/2023.
//

import UIKit

class TopTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNamePhim: UILabel!
    @IBOutlet weak var imagePhim: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
