//
//  String+Extension.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Foundation

extension String {
    
    public enum DateFormat: String {
        
        case short
        case medium
        case long
        case cc
        
        var value: String {
            switch self {
            case .short:
                return "MMM yyyy"
            case .medium:
                return "MMM dd, yyyy"
            case .long:
                return "dd MMMM yyyy"
            case .cc:
                return "MM/YY"
            }
        }
    }
    public func dateToString(format: DateFormat) -> Self {
        
        var date = self
        
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "yyyy-MM-dd"
        
        if let date2 = formatter1.date(from: date) {
            let formatter2 = DateFormatter()
            formatter2.dateFormat = format.value
            formatter2.locale = Locale(identifier: "en_US_POSIX")
            
            let dateString = formatter2.string(from: date2)
            date = dateString
        }
        return date
    }
    
    public func expirationToString(format: DateFormat) -> Self {
        
        var date = self
        
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "yyyy-MM"
        
        if let date2 = formatter1.date(from: date) {
            let formatter2 = DateFormatter()
            formatter2.dateFormat = format.value
            formatter2.locale = Locale(identifier: "en_US_POSIX")
            
            let dateString = formatter2.string(from: date2)
            date = dateString
        }
        return date
    }
    
}
