//
//  ToDoItem.swift
//  Training-To-Do
//
//  Created by Scholar on 5/12/24.
//

import Foundation

//creating a class for the items
class ToDoItem: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

