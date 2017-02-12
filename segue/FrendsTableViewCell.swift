//
//  FrendsTableViewCell.swift
//  segue
//
//  Created by jote on 2017/02/11.
//  Copyright © 2017年 jote. All rights reserved.
//

import UIKit

class FrendsTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!

    var name:String? {
        get {
            return self.label.text
        }
        set {
            self.label.text = newValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
