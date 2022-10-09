//
//  TransactionDetailRow.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 25.01.2022.
//

import SwiftUI

struct TransactionDetailRow: View {
    
    var title: String
    var status: String
    
    var body: some View {
        VStack {
            HStack{
                Text(title)
                Spacer()
                Text(status)
            }
        }
    }
}

struct TransactionDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailRow(title: "Status", status: "Completed")
    }
}
