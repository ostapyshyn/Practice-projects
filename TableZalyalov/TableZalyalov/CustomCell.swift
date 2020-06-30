//
//  CustomCell.swift
//  TableZalyalov
//
//  Created by Volodymyr Ostapyshyn on 28.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit


protocol CustomTableCell {
    
    static func cellNib() -> UINib?
    
    static func cellIdentifier() -> String
}

class CustomCell: UITableViewCell, CustomTableCell {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    func configure(with user: UserModel) {
        label1.text = user.age
        label2.text = user.name
        
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

extension UITableViewCell {
    
    static func cellNib() -> UINib? {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static func cellIdentifier() -> String {
        return String(describing: self)
    }
}
