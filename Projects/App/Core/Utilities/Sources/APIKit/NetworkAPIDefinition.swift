//
//  NetworkAPIDefinition.swift
//  Utilities_ios
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation

public protocol NetworkAPIDefinition {
  
  typealias URLInfo = NetworkAPI.URLInfo
  typealias RequestInfo = NetworkAPI.RequestInfo
  
  associatedtype Parameter: Encodable
  associatedtype Response: Decodable
  
  var urlInfo: URLInfo { get }
  var requestInfo: RequestInfo<Parameter> { get }
}
