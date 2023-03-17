//
//  Dep+Networking.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

public extension Dep {
  /**
   이 모듈은 API 요청 및 응답 처리와 관련된 모든 작업을 처리합니다.
   */
  struct Networking { }
}

extension Dep.Networking: Layer {
  public static var name: String = "Networking"
  
  public enum TargetName: String, LayerTargetName{
    case ChatGPTAPIClient
    
    public var layer: any Layer.Type {
      Dep.Networking.self
    }
  }
}
