import Combine
import Foundation
import DefaultNetworkOperationPackage

final class AccountViewModel: ObservableObject {
    
	init() { fetch() }

    @Published private(set) var account = AccountResponseModel()

	private func fetch() {
        do {
            guard let urlRequest = try? AccountServiceProvider(request: getRewardsRequest()).returnUrlRequest(headerType: .contentType) else { return }
            fireApiCall(urlRequest: urlRequest, completion: accountDataListener)
        }
	}
    
    private func getRewardsRequest() -> AccountRequestModel {
        return AccountRequestModel()
    }
    
    private func fireApiCall(urlRequest: URLRequest, completion: @escaping (Result<AccountResponseModel, ErrorResponse>) -> Void) {
        APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
    }
    
    private lazy var accountDataListener: (Result<AccountResponseModel, ErrorResponse>) -> Void = { [weak self] result in
        switch result {
        case .success(let response):
            self?.apiCallHandler(from: response)
        case .failure(let error):
            print(error)
        }
    }
    
    private func apiCallHandler(from response: AccountResponseModel) {
        // TODO: - Data handler to be filled
        account.firstName = response.firstName
        account.lastName = response.lastName
        account.details = response.details
        account.email = response.email
    }
    
}
