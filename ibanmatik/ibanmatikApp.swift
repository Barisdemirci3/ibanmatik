//
//  ibanmatikApp.swift
//  ibanmatik
//
//  Created by Barış Demirci on 20.02.2025.
//

import SwiftUI

@main
struct ibanmatikApp: App {
    @AppStorage("onBoardingPass") var onBoardingPass = false
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            if onBoardingPass == false {
                OnboardingFirst()
            }
            else{
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
