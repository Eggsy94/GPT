//
//  Dep+Presentation.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/16.
//

import Foundation

public extension Dep {
  /**
   사용자 인터페이스와 관련된 모든 작업을 처리하는 모듈입니다.
   이 모듈에는 사용자 인터페이스 구성 요소, 뷰(UI), 뷰모델(ViewModel) 등이 포함됩니다.
   */
  struct Presentation { }
}

extension Dep.Presentation: Layer {
  public static var name: String = "Presentation"
  
  public enum TargetName: String, LayerTargetName {
    case ChatUI
    case ChatViewModel
    
    public var layer: any Layer.Type {
      Dep.Presentation.self
    }
  }
}
