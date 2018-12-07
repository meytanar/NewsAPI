//
//  NewsCell.swift
//  NewsAPI
//
//  Created by BSH_MRM on 6.12.2018.
//  Copyright © 2018 BSH_MRM. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
