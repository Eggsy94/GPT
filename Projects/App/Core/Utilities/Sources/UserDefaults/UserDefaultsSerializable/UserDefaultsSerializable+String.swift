//
//  UserDefaultsSerializable+String.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation

extension String: UserDefaultsSerializable {
  
  public var storedValue: Self { self }
  public static var `default`: String { "" }
  
  public init(storedValue: Self) {
    self = storedValue
  }
}
