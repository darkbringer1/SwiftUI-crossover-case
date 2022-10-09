//
//  DetailViewModel.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 25.01.2022.
//

import Foundation
import Combine
import Foundation
import DefaultNetworkOperationPackage

final class DetailViewModel: ObservableObject {
    
    let id: String
    
    init(id: String) {
        self.id = id
        fetch()
    }

    @Published private(set) var transactionDetail = Transaction()

    private func fetch() {
        do {
            guard let urlRequest = try? DetailServiceProvider(request: getRewardsRequest(), id: id).returnUrlRequest(headerType: .contentType) else { return }
            fireApiCall(urlRequest: urlRequest, completion: transactionDataListener)
        }
    }
    
    private func getRewardsRequest() -> TransactionRequestModel {
        return TransactionRequestModel()
    }
    
    private func fireApiCall(urlRequest: URLRequest, completion: @escaping (Result<Transaction, ErrorResponse>) -> Void) {
        APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
    }
    
    private lazy var transactionDataListener: (Result<Transaction, ErrorResponse>) -> Void = { [weak self] result in
        switch result {
        case .success(let response):
            self?.apiCallHandler(from: response)
        case .failure(let error):
            print(error)
        }
    }
    
    private func apiCallHandler(from response: Transaction) {
        // TODO: - Data handler to be filled
        transactionDetail.amount = response.amount
        transactionDetail.date = response.date
        transactionDetail.title = response.title
    }
    
}
