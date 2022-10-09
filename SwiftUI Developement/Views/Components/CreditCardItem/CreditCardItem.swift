//
//  CreditCardItem.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import SwiftUI

struct CreditCardItem: View {
    
    var cardNumber: String
    var expirationDate: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("cardRectangle")
                .resizable()
                
            VStack(alignment: .leading) {
                Text(cardNumber)
                    .font(.title)
                    .fontWeight(.medium)
                    .tracking(5)
                Text("Expiration Date")
                    .padding(.top, 5)
                Text(expirationDate.expirationToString(format: .cc))
                    .font(.headline)
            }
            .foregroundColor(.white)
            .padding()
            
            
        }
        .overlay(alignment: .topLeading) {
            Image("alphaLogo")
                .padding()
        }
        .overlay(alignment: .bottomTrailing) {
            Image("visaLogo")
                .padding()
        }

    }
}

struct CreditCardItem_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardItem(cardNumber: "**** 9999", expirationDate: "12/12")
    }
}
