//
//  Rewards.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import SwiftUI
import Combine

struct Rewards: View {
    
    @ObservedObject private var rewards = RewardsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    Section {
                        CreditCardItem(
                            cardNumber: "**** " + rewards.rewards.cardNumber,
                            expirationDate: rewards.rewards.cardExpirationDate)
                    }
                    Section {
                        CurrentBalance(
                            date: .now,
                            balance: rewards.rewards.balance)
                    } header: {
                        Text("Current Balance")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    Section {
                        ForEach(rewards.rewards.transactions, id: \.self) { item in
                            NavigationLink {
                                Detail(transactionDetail: DetailViewModel(id: item.id))
                            } label: {
                                TransactionItem(
                                    title: "\(item.title)",
                                    date: "\(item.date.dateToString(format: .medium))",
                                    amount: item.amount,
                                    bird: item.bird)
                                    .padding(-3)
                            }
                        }
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        
                    } header: {
                        Text("Latest Transactions")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                .padding()
            }
            .navigationTitle("Rewards")
        }
    }
}

struct Rewards_Previews: PreviewProvider {
    static var previews: some View {
        Rewards()
    }
}
