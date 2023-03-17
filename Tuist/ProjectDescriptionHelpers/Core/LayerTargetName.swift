//
//  LayerTargetName.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/17.
//

import ProjectDescription

public protocol LayerTargetName: RawRepresentable where RawValue == String {
  var layer: any Layer.Type { get }
  func targetName(_ platform: Platform) -> String
}

extension LayerTargetName {
  public func targetName(_ platform: Platform) -> String {
    self.rawValue+"_\(platform.rawValue)"
  }
  
  public func dep(platform: Platform) -> Dep {
    .project(
      target: targetName(platform),
      path: .relativeToRoot("Projects/App/\(layer.name)/\(self.rawValue)")
    )
  }
}
