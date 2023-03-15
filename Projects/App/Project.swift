
import ProjectDescription
 
func appProject() -> Project {
  let targets: [Target] = [
    .init(
      name: "iOS",
      platform: .iOS,
      product: .app,
      bundleId: "Eggsy.study.gpt.iphone",
      deploymentTarget: .iOS(
        targetVersion: "16.0", devices: [.iphone]
      ),
      sources: ["Sources/**"],
      dependencies: [],
      settings: .settings(base: [
        "SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD": false
      ])
    ),
    .init(
      name: "Mac",
      platform: .macOS,
      product: .app,
      bundleId: "Eggsy.study.gpt.mac",
      deploymentTarget: .macOS(targetVersion: "13.0"),
      sources: ["Sources/**"],
      dependencies: []
    )
  ]
  
  return .init(
    name: "App",
    organizationName: "Eggsy.study.gpt",
    options: .options(automaticSchemesOptions: .disabled),
    targets: targets,
    additionalFiles: [] //프로젝트파일에 들어갈 파일 목록들
  )
}

let project = appProject()
