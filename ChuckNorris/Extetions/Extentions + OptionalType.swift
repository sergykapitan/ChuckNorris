//
//  Extentions + OptionalType.swift
//  ChuckNorris
//
//  Created by Sergey on 20.01.2021.
//

import Foundation

public protocol OptionalType {
    associatedtype Wrapped
    var value: Wrapped? { get }
}
 
extension Optional: OptionalType {
    public var value: Wrapped? {
        return self
    }
 
    @discardableResult
    public func then(_ closure: (Wrapped) -> Void) -> Optional {
        if case .some(let item) = self {
            closure(item)
        }
 
        return self
    }
 
    public func otherwise(_ closure: () -> Void) {
        if case .none = self {
            closure()
        }
    }
}
