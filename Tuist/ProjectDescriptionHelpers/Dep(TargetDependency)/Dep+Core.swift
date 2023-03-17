//
//  Dep+Core.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/15.
//

import Foundation

public extension Dep {
  /**
   앱 전체에서 사용되는 기본 모델과 유틸리티를 포함합니다.
   예를 들어, 공통적으로 사용되는 데이터 모델, 에러 처리, 확장 등이 이 모듈에 포함됩니다.
   */
  struct Core { }
}

extension Dep.Core: Layer {
  public static var name: String = "Core"
  
  public enum TargetName: String, LayerTargetName {
    /**
     Extension, Color, Font, Networking Helper
     */
    case Utilities
    case Model
    
    public var layer: any Layer.Type {
      Dep.Core.self
    }
  }
}
