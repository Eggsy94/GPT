//
//  UserDefaultsSerializable+Bool.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation

extension Bool: UserDefaultsSerializable {
  
  public var storedValue: Self { self }
  public static var `default`: Bool { false }
  
  public init(storedValue: Self) {
    self = storedValue
  }
}
