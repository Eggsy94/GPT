//
//  BundleId.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import Foundation
import ProjectDescription

public enum BundleId {
  static let base = "Eggsy.study.gpt"
}

extension BundleId {
  public static func forPlatform(_ platform: Platform, name: String) -> String {
    return "\(BundleId.base).\(platform.rawValue).\(name)"
  }
}
