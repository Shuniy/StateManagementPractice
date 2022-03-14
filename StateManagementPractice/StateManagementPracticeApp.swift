//
//  StateManagementPracticeApp.swift
//  StateManagementPractice
//
//  Created by Shubham Kumar on 20/01/22.
//

import SwiftUI

@main
struct StateManagementPracticeApp: App {
    @StateObject private var task = Task(name:"Check PluralSight", isComplete: false, lastCompleted: nil)
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(task)
        }
    }
}
