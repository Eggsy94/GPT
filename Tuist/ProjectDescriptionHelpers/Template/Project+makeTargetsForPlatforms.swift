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
    dependencies: [any LayerTargetName]
  ) -> [Target] {
    
    let isResouces = false//(product == .framework || product == .staticFramework)
    let name = targetName.rawValue
    return [
      .init(
        name: name+"_\(Platform.iOS.rawValue)",
        platform: .iOS,
        product: product,
        bundleId: BundleId.forPlatform(.iOS, name: name),
        deploymentTarget: .iOS,
        infoPlist: .default,
        sources: ["Sources/**/*.swift"],
        resources: isResouces ? ["Resources/**"]: nil,
        dependencies: dependencies.map { $0.dep(platform: .iOS) }
        
      ),
      .init(
        name: name+"_\(Platform.macOS.rawValue)",
        platform: .macOS,
        product: product,
        bundleId: BundleId.forPlatform(.macOS, name: name),
        deploymentTarget: .macOS,
        infoPlist: .default,
        sources: ["Sources/**/*.swift"],
        resources: isResouces ? ["Resources/**"]: nil,
        dependencies: dependencies.map { $0.dep(platform: .macOS) }
      ),
      .init(
        name: name+"_unitTest",
        platform: .iOS,
        product: .unitTests,
        bundleId: BundleId.forPlatform(.iOS, name: name)+".unitTest",
        deploymentTarget: .iOS,
        infoPlist: .default,
        sources: ["Tests/Sources/*.swift"],
        dependencies: [
          [layer.target(name: targetName, platform: .iOS)], [.xctest]
        ].flatMap { $0 }
      )
    ]
  }
}
