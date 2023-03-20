//
//  Semantic.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/20.
//

import SwiftUI

public struct SemanticColor {
  private let dark: Color
  private let light: Color
  
  private init(_ dark: Color, light: Color) {
    self.dark = dark
    self.light = light
  }
}

//extension SemanticColor {
//  public var color: Color {
//    guard let colorModeRawValue
//  }
//}
