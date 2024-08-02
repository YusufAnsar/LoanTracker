//
//  AddLoanView.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//

import SwiftUI

struct AddLoanView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var amount = ""
    @State private var startDate = Date()
    @State private var dueDate = Date()


    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                    .textInputAutocapitalization(.sentences)
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
                DatePicker("Start Date", selection: $startDate, in: ...Date(), displayedComponents: .date)
                DatePicker("Due Date", selection: $dueDate, in: startDate..., displayedComponents: .date)
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
