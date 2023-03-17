//
//  URLInfo+ChatGPTAPI.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation

public extension NetworkAPI.URLInfo {
  static func ChatGPTAPI() -> Self {
    Self.init(host: "api.openai.com", path: "v1/chat/completions")
  }
}
