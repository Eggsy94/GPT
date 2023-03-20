//
//  WrappedDefault.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation
import Combine

@propertyWrapper
public struct WrappedDefault<T: UserDefaultsSerializable> {
  private let _userDefaults: UserDefaults
  private let _publisher: CurrentValueSubject<T, Never>
  
  private let key: AppSettingKey
  
  public var wrappedValue: T {
    get {
      let value: T = _userDefaults.fetch(for: key)
      return value
    }
    set {
      _userDefaults.save(newValue, for: key)
      _publisher.send(newValue)
    }
  }
  
  internal init(
    _ key: AppSettingKey,
    defaultValue: T,
    userDefaults: UserDefaults = UserDefaults.standard
  ) {
    self.key = key
    self._userDefaults = userDefaults
    userDefaults.registerDefault(value: defaultValue, for: key)
    
    self._publisher = CurrentValueSubject<T, Never>(userDefaults.fetch(for: key))
  }
}

extension WrappedDefault {
  public var publishedValue: AnyPublisher<T, Never> {
    _publisher.eraseToAnyPublisher()
  }
}
