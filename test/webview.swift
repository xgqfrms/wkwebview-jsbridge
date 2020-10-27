//
//  ViewController.swift
//  webview-app
//
//  Created by 夏凌晨 on 2020/10/27.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
   var webView: WKWebView!
   override func viewDidLoad() {
      super.viewDidLoad()
      let myURL = URL(string:"https://www.apple.com")
      let myRequest = URLRequest(url: myURL!)
      webView.load(myRequest)
   }
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
   }
}
