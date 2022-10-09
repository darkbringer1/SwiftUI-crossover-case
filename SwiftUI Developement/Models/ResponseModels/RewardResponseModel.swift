//
//  RewardResponseModel.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Foundation

// MARK: - RewardResponseModel
struct RewardsResponseModel: Codable {
    var cardNumber: String = ""
    var cardExpirationDate: String = ""
    var balance: Double = 0
    var transactions: [Transaction] = [Transaction]()
}

