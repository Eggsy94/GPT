
import SwiftUI

#if os(iOS)
import ChatUI_iOS
#elseif os(macOS)
import ChatUI_macos
#endif

#if os(iOS)
import ChatViewModel_iOS
#elseif os(macOS)
import ChatViewModel_macos
#endif

@main
struct GPT { }

extension GPT: App {
  var body: some Scene {
    WindowGroup {
      ChatUI()
    }
  }
}
