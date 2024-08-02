//
//  LoanTrackerApp.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI

@main
struct LoanTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            AllLoansView()
                .environment(\.managedObjectContext, PersistenceController.shared.viewContext)
        }
    }
}
