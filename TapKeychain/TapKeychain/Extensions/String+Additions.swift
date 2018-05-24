//
//  String+Additions.swift
//  TapKeychain
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

extension String: KeychainRepresentable {

    public func toData() -> Data? {

        return self.data(using: .utf8, allowLossyConversion: false)
    }

    public init?(data: Data) {

        self.init(data: data, encoding: .utf8)
    }
}
