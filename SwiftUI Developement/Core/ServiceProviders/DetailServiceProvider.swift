//
//  DetailServiceProvider.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 25.01.2022.
//

import Foundation
import DefaultNetworkOperationPackage

class DetailServiceProvider: ApiServiceProvider<TransactionRequestModel> {
    let id: String
    init(request: TransactionRequestModel, id: String) {
        self.id = id
        super.init(method: .get,
                   baseUrl: BaseUrl.main.value,
                   path: Path.transactionDetails(id).value,
                   data: request)
    }
}
