//
//  EndpointManager.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Foundation

typealias BaseUrl = EndpointManager.BaseURL
typealias Path = EndpointManager.Paths

enum EndpointManager {
    
    enum BaseURL: GenericValueProtocol {
        
        typealias Value = String
        
        case main
        
        var value: String {
            switch self {
                case .main:
                    return "https://ios.rp.devfactory.com/"
            }
        }
    }
    
    enum Paths: GenericValueProtocol {
        typealias Value = String
        
        case rewardInfo
        case fullTransactionList
        case transactionDetails(String)
        case account
        
        var value: String {
            switch self {
            case .rewardInfo:
                return "rewards"
            case .fullTransactionList:
                return "rewards/transactions"
            case .transactionDetails(let transactionId):
                return "rewards/transactions/\(transactionId)"
            case .account:
                return "accounts"
            }
        }
    }
}
