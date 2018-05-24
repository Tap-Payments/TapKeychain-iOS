//
//  Data+Additions.swift
//  TapKeychain
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

extension Data: KeychainRepresentable {

    public func toData() -> Data? {

        return self
    }

    public init?(data: Data) {

        self = data
    }
}
