//
//  RewardsViewModel.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Combine
import Foundation
import DefaultNetworkOperationPackage

final class RewardsViewModel: ObservableObject {
    
    init() { fetch() }

    @Published private(set) var rewards = RewardsResponseModel()

    private func fetch() {
        do {
            guard let urlRequest = try? RewardsServiceProvider(request: getRewardsRequest()).returnUrlRequest(headerType: .contentType) else { return }
            fireApiCall(urlRequest: urlRequest, completion: rewardsDataListener)
        }
    }
    
    private func getRewardsRequest() -> RewardRequestModel {
        return RewardRequestModel()
    }
    
    private func fireApiCall(urlRequest: URLRequest, completion: @escaping (Result<RewardsResponseModel, ErrorResponse>) -> Void) {
        APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
    }
    
    private lazy var rewardsDataListener: (Result<RewardsResponseModel, ErrorResponse>) -> Void = { [weak self] result in
        switch result {
        case .success(let response):
            self?.apiCallHandler(from: response)
        case .failure(let error):
            print(error)
        }
    }
    
    private func apiCallHandler(from response: RewardsResponseModel) {
        // TODO: - Data handler to be filled
        rewards.balance = response.balance
        rewards.cardExpirationDate = response.cardExpirationDate
        rewards.cardNumber = response.cardNumber
        rewards.transactions = response.transactions
    }
    
}
