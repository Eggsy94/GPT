//
//  NetworkAPIError.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation

public struct APIError: Error, Equatable {
  public static func == (lhs: APIError, rhs: APIError) -> Bool {
    lhs.id != rhs.id
  }
  
  let id: UUID = .init()
  let error: Error
  
  public init(error: Error) {
    self.error = error
  }
}
