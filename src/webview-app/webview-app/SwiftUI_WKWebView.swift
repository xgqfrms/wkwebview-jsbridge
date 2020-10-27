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
  var url: String;
  func makeUIView(context: Context) -> WKWebView {
    guard let url = URL(string: self.url) else {
      return WKWebView();
    }
    let request = URLRequest(url: url);
    let webview = WKWebView();
    webview.load(request);
    return webview;
  }
  func updateUIView(_ uiView: WKWebView, context: Context) {
    //
  }
}
