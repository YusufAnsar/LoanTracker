//
//  ContentView.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        Text("hello world")
    }

    
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}