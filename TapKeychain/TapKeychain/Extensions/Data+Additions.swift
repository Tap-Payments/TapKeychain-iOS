//
//  Data+Additions.swift
//  TapKeychain
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

extension Data: KeychainRepresentable {

    public func tap_toKeychainData() -> Data? {

        return self
    }

    public init?(tap_keychainData: Data) {

        self = tap_keychainData
    }
}
