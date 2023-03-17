//
//  Dep+Persistence.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

public extension Dep {
  /**
   채팅 메시지 및 기타 앱 데이터를 저장하고 검색하는 데 사용되는 모듈입니다.
   이 모듈은 데이터베이스 액세스, 파일 저장 등을 처리합니다.
   */
  struct Persistence { }
}

extension Dep.Persistence: Layer {
  public static var name: String = "Persistence"
  
  public enum TargetName: String, LayerTargetName {
    case ChatStorage
    
    public var layer: any Layer.Type {
      Dep.Persistence.self
    }
  }
}
