//
//  PaymentsView.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 03/08/24.
//

import SwiftUI

struct PaymentsView: View {

    let loan: Loan

    var body: some View {
        VStack {
            List {
                ForEach(loan.paymentsArray) { payment in
                    
                }
            }
            .listStyle(.grouped)
        }
        .navigationTitle(loan.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                addButton()
            }
        }
    }

    @ViewBuilder
    private func addButton() -> some View {
        Button {

        } label: {
            Image(systemName: "plus.circle")
                .font(.title3)
        }
        .padding([.vertical, .leading], 5)
    }
}

