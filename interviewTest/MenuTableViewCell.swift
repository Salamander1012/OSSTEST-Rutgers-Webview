//
//  MenuTableViewCell.swift
//  interviewTest
//
//  Created by Salman Fakhri on 11/10/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuItemTitle: UILabel!
    
    var itemData: MenuListItem!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpCell(item: MenuListItem) {
        menuItemTitle.text = item.title
        itemData = item
    }

}
