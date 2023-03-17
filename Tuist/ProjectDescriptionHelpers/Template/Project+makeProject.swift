//
//  Project+makeProject.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import Foundation
import ProjectDescription

public extension Project {
  static func makeProject<T: Layer>(
    layer: T.Type,
    name: T.TargetName,
    product: Product,
    dependencies: [Dep]
  ) -> Self {
    .init(
      name: name.rawValue,
      targets: makeTargetsForPlatforms(
        layer: layer,
        name: name,
        product: product,
        dependencies: dependencies
      )
    )
  }
}
