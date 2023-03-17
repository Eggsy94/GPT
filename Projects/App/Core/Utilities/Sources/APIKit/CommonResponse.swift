//
//  CommonResponse.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation

public struct CommonResponse<T: Decodable>: Decodable {
  internal let summary: Summary
  public let body: T
}

public struct Summary: Decodable {
  internal let success: Bool
  internal let code: String
  internal let message: String
}
