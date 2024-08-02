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
        
    }

    func isInvalidForm() -> Bool {
        name.isEmpty || amount.isEmpty
    }
}
