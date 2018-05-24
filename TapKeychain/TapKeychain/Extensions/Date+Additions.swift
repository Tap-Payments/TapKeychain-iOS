//
//  Date+Additions.swift
//  TapKeychain
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

extension Date: KeychainRepresentable {

    public func toData() -> Data? {

        return NSKeyedArchiver.archivedData(withRootObject: self)
    }

    public init?(data: Data) {

        if let result = NSKeyedUnarchiver.unarchiveObject(with: data) as? Date {

            self = result

        } else {

            return nil
        }
    }
}
