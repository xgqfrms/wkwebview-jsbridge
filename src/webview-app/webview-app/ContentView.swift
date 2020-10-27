//
//  ContentView.swift
//  webview-app
//
//  Created by 夏凌晨 on 2020/10/27.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    // Text("Hello, World!");
    // SwiftUI_WKWebView(url: "https://cdn.xgqfrms.xyz");
    SwiftUI_WKWebView(url: "https://cdn.xgqfrms.xyz")
      .edgesIgnoringSafeArea(Edge.Set.top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


/*

// SwiftUI_WKWebView(url: "https://cdn.xgqfrms.xyz");
❌ no need ;
CompileDylibError: Failed to build ContentView.swift
Compiling failed: ';' statements are not allowed

*/
