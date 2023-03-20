//
//  ChatViewModel.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation
#if os(iOS)
import Utilities_ios
#elseif os(macOS)
import Utilities_macos
#endif

import Combine

public class ChatViewModel: ObservableObject {
  public var colorMode = AppSetting.shared.colorMode
}

extension ChatViewModel { }
