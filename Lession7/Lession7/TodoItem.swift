//
//  TodoItem.swift
//  Lession7
//
//  Created by Nguyen Dong Son on 3/23/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import Foundation

struct TodoItem {
    var title: String
    var deadline: Date
    var UUID: String
    
    init(deadline: Date, title: String, UUID: String) {
        self.deadline = deadline
        self.title = title
        self.UUID = UUID
    }
    
    var isOverdue: Bool {
        // Optionally, you can omit "ComparisonResult" and it will be inferred.
        return (Date().compare(self.deadline) == ComparisonResult.orderedDescending) // deadline is earlier than current date
    }
}
