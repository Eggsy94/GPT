//
//  ColorMode.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import UIKit

public enum ColorMode: String, UserDefaultsSerializable {
  case dark
  case light
  
  public var storedValue: String { self.rawValue }
  
  public static var `default`: String { ColorMode.dark.rawValue }
  
  public init(storedValue: String) {
    self = ColorMode(rawValue: storedValue) ?? .dark
  }
}

extension ColorMode {
  public static func defaultColorMode() -> Self {
    let currentTraitCollection = UIScreen.main.traitCollection
    switch currentTraitCollection.userInterfaceStyle {
    case .light: return .light
    case .dark: return .dark
    default: return .dark
    }
  }
}
