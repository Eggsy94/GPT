
import ProjectDescription
import ProjectDescriptionHelpers

func appProject() -> Project {
  
  let dependencies: [any LayerTargetName] = [
    Dep.Presentation.TargetName.ChatViewModel,
    Dep.Presentation.TargetName.ChatUI
  ]
  
  let targets: [Target] = [
    .init(
      name: Platform.iOS.rawValue,
      platform: .iOS,
      product: .app,
      bundleId: BundleId.forPlatform(.iOS, name: "App"),
      deploymentTarget: .iOS,
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: dependencies.map { $0.dep(platform: .iOS) },
      settings: .settings(base: [
        "SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD": false
      ])
    ),
    .init(
      name: Platform.macOS.rawValue,
      platform: .macOS,
      product: .app,
      bundleId: BundleId.forPlatform(.macOS, name: "App"),
      deploymentTarget: .macOS,
      sources: ["Sources/**"],
      dependencies: dependencies.map { $0.dep(platform: .macOS) }
    )
  ]
  
  return .init(
    name: "App",
    organizationName: "Eggsy.study",
    targets: targets,
    additionalFiles: []
  )
}

let project = appProject()
