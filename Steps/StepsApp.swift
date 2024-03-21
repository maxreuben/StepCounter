//
//  StepsApp.swift
//  Steps
//
//  Created by Brittany Rima on 12/6/22.
//

import SwiftUI

@main
struct StepsApp: App {
    @Environment(\.scenePhase) var scenePhase
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
