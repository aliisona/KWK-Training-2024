//
//  Training_To_DoApp.swift
//  Training-To-Do
//
//  Created by Scholar on 5/12/24.
//

import SwiftUI

@main
struct Training_To_DoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
