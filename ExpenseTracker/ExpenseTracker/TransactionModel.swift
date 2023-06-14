//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Sagar Das on 28/05/23.
//

import Foundation

struct Transaction : Identifiable {
     
    let id: Int
    let data: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
