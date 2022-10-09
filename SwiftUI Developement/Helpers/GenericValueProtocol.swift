//
//  GenericValueProtocol.swift
//  SwiftUI Developement
//
//  Created by Doğukaan Kılıçarslan on 24.01.2022.
//

import Foundation
public protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
