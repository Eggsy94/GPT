//
//  Proejct.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .makeProject(
  layer: Dep.Persistence.self,
  name: .ChatStorage,
  product: .dynamicLibrary,
  dependencies: []
)

