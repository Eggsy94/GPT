//
//  FindView.swift
//  ChatUI_ios
//
//  Created by Eggsy on 2023/03/21.
//

import SwiftUI

struct FindView {
  @Binding
  var isFind: Bool
}

extension FindView: View {
  var body: some View {
    Button(action: {
      print("Find Action")
      self.isFind = true
    }) {
     EmptyView()
    }
    .keyboardShortcut("f")
  }
}
