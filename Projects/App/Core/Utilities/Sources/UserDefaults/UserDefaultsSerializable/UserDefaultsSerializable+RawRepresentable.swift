//
//  UserDefaultsSerializable+RawRepresentable.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation

extension UserDefaultsSerializable
where Self: RawRepresentable, Self.RawValue: UserDefaultsSerializable {
  var storedValue: RawValue.StoredValue { self.rawValue.storedValue }
  
  init(storedValue: RawValue.StoredValue) {
    self = Self(rawValue: Self.RawValue(storedValue: storedValue))!
  }
  
  static var `default`: RawValue.StoredValue { Self.RawValue.default }
}
