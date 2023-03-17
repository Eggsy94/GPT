//
//  Project+Framework.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import Foundation
import ProjectDescription

extension Project {
  static func makeTargetsForPlatforms<T: Layer>(
    layer: T.Type,
    name targetName: T.TargetName,
    product: ProjectDescription.Product,
    dependencies: [Dep]
  ) -> [Target] {
    
    let isResouces = (product == .framework || product == .staticFramework)
    let name = targetName.rawValue
    return [
      .init(
        name: name+"_\(Platform.iOS.rawValue)",
        platform: .iOS,
        product: product,
        bundleId: BundleId.forPlatform(.iOS, name: name),
        deploymentTarget: .iOS,
        sources: ["Sources/*.swift"],
        resources: isResouces ? ["Resources/**"]: nil,
        dependencies: dependencies
      ),
      .init(
        name: name+"_\(Platform.macOS.rawValue)",
        platform: .macOS,
        product: product,
        bundleId: BundleId.forPlatform(.macOS, name: name),
        deploymentTarget: .macOS,
        sources: ["Sources/*.swift"],
        resources: isResouces ? ["Resources/**"]: nil,
        dependencies: dependencies
      ),
      .init(
        name: name+"_unitTest",
        platform: .iOS,
        product: .unitTests,
        bundleId: BundleId.forPlatform(.iOS, name: name)+".unitTest",
        deploymentTarget: .iOS,
        sources: ["Tests/Sources/*.swift"],
        dependencies: [
          [layer.target(name: targetName, platform: .iOS)], [.xctest]
        ].flatMap { $0 }
      )
    ]
  }
}
