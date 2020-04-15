//
//  UserCell.swift
//  MVVM-JSON
//
//  Created by Puneet Personal on 15.04.20.
//  Copyright © 2020 Puneet Personal. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //MARK: UI Outlets
    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
