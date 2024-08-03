//
//  ContentView.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI
import CoreData

struct AllLoansView: View {

    @Environment(\.managedObjectContext) var viewContext
    @State private var isAddLoanViewShowing = false
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Loan.startDate, ascending: true)],
                  animation: .default)
    private var loans: FetchedResults<Loan>

    var body: some View {
        NavigationStack {
            List {
                ForEach(loans) { loan in
                    NavigationLink(value: loan) {
                        LoanCell(name: loan.wrappedName, amount: loan.totalAmount, date: loan.wrappedDate)
                    }
                }
            }
            .navigationTitle("All loans")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    addButton()
                }
            }
            .sheet(isPresented: $isAddLoanViewShowing) {
                AddLoanView()
            }
            .navigationDestination(for: Loan.self) { loan in
                PaymentsView(loan: loan)
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
