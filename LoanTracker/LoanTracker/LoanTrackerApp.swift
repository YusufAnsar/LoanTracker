//
//  LoanTrackerApp.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI

@main
struct LoanTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
