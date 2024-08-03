//
//  Loan+CoreDataProperties.swift
//  LoanTracker
//
//  Created by Yusuf Ansar  on 02/08/24.
//
//

import Foundation
import CoreData


extension Loan {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Loan> {
        return NSFetchRequest<Loan>(entityName: "Loan")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var totalAmount: Double
    @NSManaged public var startDate: Date?
    @NSManaged public var dueDate: Date?
    @NSManaged public var payment: NSSet?

    public var wrappedName: String {
        name ?? "Unknown"
    }

    public var wrappedDate: Date {
        dueDate ?? Date()
    }

    public var paymentsArray: [Payment] {
        let set = payment as? Set<Payment> ?? []
        return set.sorted { $0.wrappedDate < $1.wrappedDate }
    }

}

// MARK: Generated accessors for payment
extension Loan {

    @objc(addPaymentObject:)
    @NSManaged public func addToPayment(_ value: Payment)

    @objc(removePaymentObject:)
    @NSManaged public func removeFromPayment(_ value: Payment)

    @objc(addPayment:)
    @NSManaged public func addToPayment(_ values: NSSet)

    @objc(removePayment:)
    @NSManaged public func removeFromPayment(_ values: NSSet)

}

extension Loan : Identifiable {

}
