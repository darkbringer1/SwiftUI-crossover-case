//
//  RewardsServiceProvider.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Foundation
import DefaultNetworkOperationPackage

class RewardsServiceProvider: ApiServiceProvider<RewardRequestModel> {

    init(request: RewardRequestModel) {
        super.init(method: .get,
                   baseUrl: BaseUrl.main.value,
                   path: Path.rewardInfo.value,
                   data: request)
    }
}
