//
//  CGFloat+Metric.swift
//  Utilities
//
//  Created by Eggsy on 2023/03/21.
//

import Foundation

extension CGFloat {
  public static func platformMetricValue(iOS: CGFloat, macOS: CGFloat) -> CGFloat {
#if os(iOS)
    return iOS
#elseif os(macOS)
    return macOS
#endif
  }
}
