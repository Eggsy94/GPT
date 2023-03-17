//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .makeProject(
  layer: Dep.Core.self,
  name: .Model,
  product: .dynamicLibrary,
  dependencies: []
)
