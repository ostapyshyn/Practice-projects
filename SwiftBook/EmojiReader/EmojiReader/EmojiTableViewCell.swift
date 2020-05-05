//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Volodymyr Ostapyshyn on 02.05.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet var emoji: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func set(object: Emoji) {
        self.emoji.text = object.emoji
        self.name.text = object.name
        self.descriptionLabel.text = object.description
    }
    
}
