//
//  AccountServiceProvider.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Foundation
import DefaultNetworkOperationPackage

class AccountServiceProvider: ApiServiceProvider<AccountRequestModel> {

    init(request: AccountRequestModel) {
        super.init(method: .get,
                   baseUrl: BaseUrl.main.value,
                   path: Path.account.value,
                   data: request)
    }
}
