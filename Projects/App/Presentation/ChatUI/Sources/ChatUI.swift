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
  
  public init() {}
}

extension ChatUI: View {
  public var body: some View {
    ZStack {
      VStack(spacing: .zero) {
        ScrollView(.vertical, showsIndicators: false) {
          LazyVStack(spacing: .zero) {
            ForEach(0...99, id: \.self) {
              Text("\($0)")
            }
          }
        }
        TextField("메시지를 입력하세요", text: .constant(""))
      }
      
      Button(action: {
        print("GGGGG")
      }) {
       EmptyView()
      }
      .keyboardShortcut("f")
    }
  }
}
