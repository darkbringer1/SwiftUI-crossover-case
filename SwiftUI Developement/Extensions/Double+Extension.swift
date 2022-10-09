//
//  Double+Extension.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 25.01.2022.
//

import Foundation
extension Double {
    func twoDecimals() -> String {
        return String(format: "%.2f", self)
    }
}
