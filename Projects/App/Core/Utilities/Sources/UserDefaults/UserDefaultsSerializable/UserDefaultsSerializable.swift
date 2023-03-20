//
//  UserDefaultsSerializable.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation

public protocol UserDefaultsSerializable {
  associatedtype StoredValue
  
  var storedValue: StoredValue { get }
  static var `default`: StoredValue { get }
  
  init(storedValue: StoredValue)
}
