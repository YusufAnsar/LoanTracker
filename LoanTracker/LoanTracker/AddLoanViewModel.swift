//
//  AddLoanViewModel.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import Foundation

@Observable final class AddLoanViewModel {

    var name = ""
    var amount = ""
    var startDate = Date()
    var dueDate = Date()

    func saveLoan() {
        let loan = Loan(context: PersistenceController.shared.viewContext)
        loan.id = UUID().uuidString
        loan.name = name
        loan.totalAmount = Double(amount) ?? 0.0
        loan.startDate = startDate
        loan.dueDate = dueDate
        PersistenceController.shared.save()
    }

    func isInvalidForm() -> Bool {
        name.isEmpty || amount.isEmpty
    }
}
