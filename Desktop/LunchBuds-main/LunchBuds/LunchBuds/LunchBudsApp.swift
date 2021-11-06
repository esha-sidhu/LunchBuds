//
//  LunchBudsApp.swift
//  LunchBuds
//
//  Created by Borborick Zhu on 26/10/21.
//

import SwiftUI

@main
struct LunchBudsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
