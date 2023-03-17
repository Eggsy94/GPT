//
//  CommonProperty.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import ProjectDescription

extension DeploymentTarget {
  public static let iOS: Self = .iOS(targetVersion: "16.0", devices: [.iphone])
  public static let macOS: Self = .macOS(targetVersion: "13.0")
}
