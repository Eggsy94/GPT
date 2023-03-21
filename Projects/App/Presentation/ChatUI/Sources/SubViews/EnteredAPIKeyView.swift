//
//  EnteredAPIKeyView.swift
//  ChatUI
//
//  Created by Eggsy on 2023/03/21.
//

import SwiftUI

#if os(iOS)
import Utilities_ios
#elseif os(macOS)
import Utilities_macos
#endif

struct EnteredAPIKeyView {
  @State
  var apiKey: String = ""
  
  enum Str {
    fileprivate static let title: String = "APIKey: "
    fileprivate static let placeholder: String = "OpenAI Chat APIKey를 입력하세요"
    fileprivate static let confirm: String = "확인"
  }
  
  enum Metric {
    fileprivate static let width: CGFloat = .platformMetricValue(iOS: 320, macOS: 500)
  }
  
}

extension EnteredAPIKeyView: View {
  var body: some View {
    VStack {
      HStack {
        Text(Str.title)
          .font(.body)
        
        TextField(Str.placeholder, text: $apiKey)
      }
      
      Button(action: {
        print(apiKey)
      }) {
        Text(Str.confirm)
      }
    }
    .frame(width: Metric.width)
  }
}

struct EnteredAPIKeyView_Previews: PreviewProvider {
  static var previews: some View {
    
    var iOSPreviewDeviceRawValue: String  {
  #if os(iOS)
      return "iPhone 13 mini"
  #else
      return ""
  #endif
    }
    
    return EnteredAPIKeyView()
      .padding()
      .previewDevice(.init(rawValue: iOSPreviewDeviceRawValue))
  }
}
