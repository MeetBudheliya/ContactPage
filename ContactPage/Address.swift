//
//  Address.swift
//  SENG
//
//  Created by MAC on 19/01/21.
//

import UIKit

class Address: UITableViewCell {
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var secondLBL: UILabel!
    @IBOutlet weak var scorePercentange: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
