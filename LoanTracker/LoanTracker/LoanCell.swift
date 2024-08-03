//
//  LoanCell.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 03/08/24.
//

import SwiftUI

struct LoanCell: View {
    let name: String
    let amount: Double
    let date: Date

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(amount, format: .currency(code: "INR"))
                    .font(.subheadline)
                    .fontWeight(.light)
            }
            Spacer()
            Text(date.formatted(date: .abbreviated, time: .omitted))
        }
    }
}

#Preview {
    LoanCell(name: "Test Loan", amount: 1000, date: Date())
}
