//
//  Task.swift
//  The Night Porter
//
//  Created by Volodymyr Ostapyshyn on 17.04.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation

enum TaskType {
    case daily, weekly, monthly
}

struct Task {
    var name: String
    var type: TaskType
    var completed: Bool
    var lastCompleted: NSDate?
}
