//
//  UserDefaults+functions.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation

extension UserDefaults {
  func save(_ value: some UserDefaultsSerializable, for key: AppSettingKey) {
    set(value.storedValue, forKey: key.rawValue)
  }
  
  func delete(for key: AppSettingKey) {
    removeObject(forKey: key.rawValue)
  }
  
  func fetch<T: UserDefaultsSerializable>(for key: AppSettingKey) -> T {
    
    let fetched: Any?
    
    fetched = object(forKey: key.rawValue)
    
    if let fetched = fetched as? T.StoredValue {
      return .init(storedValue: fetched)
    } else {
      return .init(storedValue: T.default)
    }
  }
  
  func registerDefault<T: UserDefaultsSerializable>(value: T, for key: AppSettingKey) {
    register(defaults: [key.rawValue: value.storedValue])
  }
}
