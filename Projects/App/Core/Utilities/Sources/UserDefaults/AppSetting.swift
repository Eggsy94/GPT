//
//  AppSetting.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import Foundation
import Combine

public final class AppSetting {
  public static let shared = AppSetting()
  
  @WrappedDefault(.ColorMode, defaultValue: ColorMode.defaultColorMode())
  public var colorMode: ColorMode
  
  public var colorModePublisher: AnyPublisher<ColorMode, Never> {
    _colorMode.publishedValue
  }
  
  @WrappedDefault(.APIKey, defaultValue: "")
  public var apiKey: String
  
  public var apiKeyPublisher: AnyPublisher<String, Never> {
    _apiKey.publishedValue
  }
}

extension AppSetting {
  public func setUserDefaults(userDefaults : UserDefaults) {
    _colorMode = .init(
      .ColorMode,
      defaultValue: ColorMode.defaultColorMode(),
      userDefaults: userDefaults
    )
  }
}
