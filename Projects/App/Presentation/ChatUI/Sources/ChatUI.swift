//
//  ChatUI.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/17.
//

import SwiftUI

#if os(iOS)
import ChatViewModel_ios
#elseif os(macOS)
import ChatViewModel_macos
#endif

public struct ChatUI {
  
  @ObservedObject
  var viewModel = ChatViewModel()
  
  @State
  var str: String = ""
  
  public init() {}
}

extension ChatUI: View {
  public var body: some View {
    ZStack {
      
      if viewModel.apiKey.isEmpty {
        EnteredAPIKeyView()
      } else {
        VStack(spacing: .zero) {
          
          
        }
        FindView(isFind: $viewModel.isFind)
      }
    }
  }
}
