//
//  SourcesTableViewCell.swift
//  Tinder for News
//
//  Created by Gabriel Centeno on 3/25/17.
//  Copyright © 2017 Gabriel Centeno. All rights reserved.
//

import UIKit

class SourcesTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var switchSource: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
