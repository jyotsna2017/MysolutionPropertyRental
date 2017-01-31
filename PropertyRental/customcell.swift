//
//  customcell.swift
//  propertyApp
//
//  Created by My Solutions 4 U on 1/27/17.
//  Copyright © 2017 Jeevan. All rights reserved.
//

import UIKit

class customcell: UITableViewCell {
    
    
    @IBOutlet weak var paln1Field: UILabel!
    
    @IBOutlet weak var plan2Field: UILabel!
    
    @IBOutlet weak var paln3Field: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
