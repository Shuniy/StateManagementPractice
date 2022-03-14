//
//  Task.swift
//  StateManagementPractice
//
//  Created by Shubham Kumar on 20/01/22.
//

import Foundation

class Task:ObservableObject {
    
    internal init(name:String, isComplete:Bool, lastCompleted:Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    var name:String = ""
    @Published var isComplete:Bool
    var lastCompleted:Date?
}
