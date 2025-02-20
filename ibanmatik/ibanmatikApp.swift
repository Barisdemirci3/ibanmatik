//
//  ibanmatikApp.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

@main
struct ibanmatikApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
