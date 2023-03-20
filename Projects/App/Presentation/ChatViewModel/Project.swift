//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .makeProject(
  layer: Dep.Presentation.self,
  name: .ChatViewModel,
  product: .framework,
  dependencies: [
    Dep.Core.TargetName.Utilities,
    Dep.Core.TargetName.Model
  ]
)
