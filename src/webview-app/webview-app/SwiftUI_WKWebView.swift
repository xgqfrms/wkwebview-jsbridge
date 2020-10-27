//
//  SwiftUI_WKWebView.swift
//  webview-app
//
//  Created by 夏凌晨 on 2020/10/28.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import SwiftUI
//import Foundation
import WebKit

struct SwiftUI_WKWebView: UIViewRepresentable {
  var url: String
  func makeUIView(context: Context) -> WKWebView {
    guard let url = URL(string: self.url) else {
      return WKWebView()
    }
    let request = URLRequest(url: url)
    let webview = WKWebView()
    webview.load(request)
    return webview
  }
  func updateUIView(_ uiView: WKWebView, context: Context) {
    //
  }
}


// Previews 入口 ✅
struct SwiftUI_WKWebView_Previews: PreviewProvider {
  static var previews: some View {
    // 👍 联网的 URL, Canvas 必须开启 live preview, 动态的请求内容
    SwiftUI_WKWebView(url: "https://cdn.xgqfrms.xyz")
      .edgesIgnoringSafeArea(Edge.Set.top)
  }
}


/*

// SwiftUI_WKWebView(url: "https://cdn.xgqfrms.xyz");
❌ no need ;
CompileDylibError: Failed to build ContentView.swift
Compiling failed: ';' statements are not allowed

*/
