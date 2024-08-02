//
//  ContentView.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI
import CoreData

struct AllLoansView: View {

    @State private var isAddLoanViewShowing = false

    var body: some View {
        NavigationStack {
            List {

            }
            .navigationTitle("All loans")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    addButton()
                }
            }
            .sheet(isPresented: $isAddLoanViewShowing) {

            }
        }
    }

    @ViewBuilder
    private func addButton() -> some View {
        Button {
            isAddLoanViewShowing = true
        } label: {
            Image(systemName: "plus.circle")
                .font(.title3)
        }
        .padding([.vertical, .leading], 5)
    }
}


#Preview {
    AllLoansView()
}
