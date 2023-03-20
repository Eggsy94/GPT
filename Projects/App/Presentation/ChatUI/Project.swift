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
  name: .ChatUI,
  product: .framework,
  dependencies: [Dep.Presentation.TargetName.ChatViewModel]
)
