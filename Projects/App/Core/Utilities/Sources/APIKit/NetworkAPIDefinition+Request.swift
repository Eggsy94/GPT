//
//  NetworkAPIDefinition+Request.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/17.
//

import Combine
import Foundation

public extension NetworkAPIDefinition {
  
  func request() -> AnyPublisher<Response, APIError> {
    let url = urlInfo.url
    let request = requestInfo.requests(url: url)
    let config = URLSessionConfiguration.default
    let session = URLSession(configuration: config)

    return session
      .dataTaskPublisher(for: request)
      .tryMap { (data, response) -> Response in
        do {
          if Response.self == Data.self {
            return data as! Self.Response
          } else {
            return try JSONDecoder().decode(Response.self, from: data)
          }
        } catch let error {
          print(error.localizedDescription, error)
          throw error
        }
      }
      .mapError { error -> APIError in
        return APIError(error: error)
      }
      .eraseToAnyPublisher()
  }
}
