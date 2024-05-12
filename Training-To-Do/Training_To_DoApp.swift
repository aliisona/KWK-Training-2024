//
//  Training_To_DoApp.swift
//  Training-To-Do
//
//  Created by Scholar on 5/12/24.
import SwiftUI
import SwiftData

@main
struct Training_To_DoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: ToDoItem.self)
        }

    }
}
