//
//  String+toColor.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/19.
//

import Foundation
import SwiftUI

extension String {
  internal var toColor: Color {
    
    let cString: String = self.trimmingCharacters(in: ["#"])
    
    if (cString.count != 6) { return Color.clear }
    
    var rgbValue: UInt64 = .zero
    Scanner(string: cString).scanHexInt64(&rgbValue)
    
    let r: Double = Double(((rgbValue & 0xff0000) >> 16)) / 255.0
    let g: Double = Double(((rgbValue & 0x00ff00) >> 16)) / 255.0
    let b: Double = Double(((rgbValue & 0x0000ff) >> 16)) / 255.0
    
    return Color(.sRGB, red: r, green: g, blue: b, opacity: 1)
  }
}

