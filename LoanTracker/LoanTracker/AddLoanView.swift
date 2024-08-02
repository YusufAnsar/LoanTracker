//
//  AddLoanView.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI

struct AddLoanView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {

            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    cancelButton()
                }
                ToolbarItem(placement: .confirmationAction) {
                    saveButton()
                }
            }
        }
    }

    @ViewBuilder
    private func cancelButton() -> some View {
        Button {
            dismiss()
        } label: {
            Text("Cancel")
                .font(.subheadline)
                .fontWeight(.semibold)
        }
    }

    @ViewBuilder
    private func saveButton() -> some View {
        Button {

        } label: {
            Text("Done")
                .font(.subheadline)
                .fontWeight(.semibold)
        }
        .disabled(true)
    }
}

#Preview {
    AddLoanView()
}
