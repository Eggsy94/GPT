//
//  ColorMode.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

#if os(iOS)
import UIKit
#elseif os(macOS)
import Cocoa
#endif

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
#if os(iOS)
    let currentTraitCollection = UIScreen.main.traitCollection
    switch currentTraitCollection.userInterfaceStyle {
    case .light: return .light
    case .dark: return .dark
    default: return .dark
    }
#elseif os(macOS)
    let currentAppearance = NSAppearance.currentDrawing()
    let isDarkMode = currentAppearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua

    if isDarkMode {
      return .dark
    } else {
      return .light
    }
#endif
  }
}
