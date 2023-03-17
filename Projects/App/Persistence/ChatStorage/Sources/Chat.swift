//
//  Chat.swift
//  ChatStorage
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation
import CloudKit

struct Chat {
  var recordID: CKRecord.ID
  var message: String
  var timestamp: Date
  var isUser: Bool
  
  init(recordID: CKRecord.ID, message: String, timestamp: Date, isUser: Bool) {
    self.recordID = recordID
    self.message = message
    self.timestamp = timestamp
    self.isUser = isUser
  }
  
  init(record: CKRecord) {
    self.recordID = record.recordID
    self.message = record["message"] as? String ?? ""
    self.timestamp = record["timestamp"] as? Date ?? Date()
    self.isUser = record["isUser"] as? Bool ?? false
  }
}
