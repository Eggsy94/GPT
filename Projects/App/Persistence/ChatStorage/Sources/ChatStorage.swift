//
//  ChatStorage.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation
import CloudKit
import Combine

public class ChatStorage {
  
  public static let shard = ChatStorage()
  
  private let container: CKContainer
  private let privateDatabase: CKDatabase
  
  private init() {
    container = CKContainer(identifier: "")
    privateDatabase = container.privateCloudDatabase
  }
}
