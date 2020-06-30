//
//  TableViewExtension.swift
//  TableZalyalov
//
//  Created by Volodymyr Ostapyshyn on 30.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    func registerCustomCell(_ cell: CustomCell.Type) {
        register(cell.cellNib(), forCellReuseIdentifier: cell.cellIdentifier())
    }
    
}
