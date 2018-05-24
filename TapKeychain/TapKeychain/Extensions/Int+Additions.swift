//
//  Int+Additions.swift
//  TapKeychain
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

extension Int: KeychainRepresentable {

    public func toData() -> Data? {

        var value = self

        return Data(bytes: &value, count: MemoryLayout.size(ofValue: value))
    }

    public init?(data: Data) {

        if let result: Int = data.withUnsafeBytes({ $0.pointee }) {

            self = result

        } else {

            return nil
        }
    }
}
