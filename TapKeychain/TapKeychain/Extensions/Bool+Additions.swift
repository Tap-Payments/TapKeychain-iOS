//
//  Bool+Additions.swift
//  TapKeychain
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

extension Bool: KeychainRepresentable {

    public func tap_toKeychainData() -> Data? {

        var value = self
        return Data(bytes: &value, count: MemoryLayout.size(ofValue: value))
    }

    public init?(tap_keychainData: Data) {

		let result: Bool? = tap_keychainData.withUnsafeBytes { (pointer) in

			let memory = pointer.bindMemory(to: Bool.self)
			guard memory.count == 1 else { return nil }

			return memory.first
		}

		if let nonnullResult = result {

			self = nonnullResult

		} else {

			return nil
		}
    }
}
