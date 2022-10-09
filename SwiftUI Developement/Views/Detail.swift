//
//  Detail.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 25.01.2022.
//

import SwiftUI

struct Detail: View {
    
    @ObservedObject var transactionDetail: DetailViewModel
    
    
    var body: some View {
        
        let title = transactionDetail.transactionDetail.title
        let amount = transactionDetail.transactionDetail.amount
        let status = transactionDetail.transactionDetail.status ?? "Completed"
        let date = transactionDetail.transactionDetail.date.dateToString(format: .medium)
        
        NavigationView {
            VStack {
                Section {
                    List {
                        TransactionDetailRow(
                            title: "Status",
                            status: status)
                        TransactionDetailRow(
                            title: "Date",
                            status: date)
                    }
                } header: {
                    TransactionDetail(
                        title: title,
                        amount: amount)
                }
                Spacer()
            }
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(transactionDetail: DetailViewModel(id: "N09D37V063"))
    }
}
