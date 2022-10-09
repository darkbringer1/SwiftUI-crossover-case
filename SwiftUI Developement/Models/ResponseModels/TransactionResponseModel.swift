//
//  TransactionResponseModel.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 25.01.2022.
//

import Foundation

// MARK: - Transaction
struct Transaction: Codable, Hashable {
    var id: String = ""
    var title: String = ""
    var date: String = ""
    var amount: Double = 0
    var bird: Bool = true
    var status: String?
}
