//
//  Layer.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import ProjectDescription

public protocol Layer {
  associatedtype TargetName: RawRepresentable where TargetName.RawValue == String
  static var name: String { get }
  static func target(name: TargetName, platform: Platform) -> Dep
}

extension Layer {
  public static func target(name: TargetName, platform: Platform) -> Dep {
    return .target(name: "\(name.rawValue)_\(platform.rawValue)")
  }
}
