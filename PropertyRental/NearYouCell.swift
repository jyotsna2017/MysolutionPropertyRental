//
//  NearYouCell.swift
//  PropertyRental
//
//  Created by My Solutions 4 U on 2/1/17.
//  Copyright © 2017 My Solutions 4 U. All rights reserved.
//

import UIKit

class NearYouCell: UITableViewCell {
    
    
    @IBOutlet weak var nearLbl: UILabel!
    
    @IBOutlet weak var ownerName: UILabel!
    
    @IBOutlet weak var timeLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
