//
//  TransactionItem.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import SwiftUI

struct TransactionItem: View {
    
    var title: String
    var date: String
    var amount: Double
    var bird: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HStack {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.semibold)
                    .tracking(1)
                    Image(bird ? "birdLogo" : "")
                        .fixedSize(horizontal: true, vertical: true)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(amount < 0 ? "-$\((-1 * amount).twoDecimals())" : "$\(amount.twoDecimals())")
                    .font(.headline)
                    .fontWeight(.regular)
                Image(systemName: "chevron.right")
            }
            Text(date)
                .font(.footnote)
        }
        .foregroundColor(.primary)
        .padding()
    }
}

struct TransactionItem_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItem(title: "Starbucks", date: "July 04, 1994", amount: -99.99, bird: true)
    }
}
