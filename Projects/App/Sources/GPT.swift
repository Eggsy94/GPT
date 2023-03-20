
import SwiftUI

#if os(iOS)
import ChatUI_ios
#elseif os(macOS)
import ChatUI_macos
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
