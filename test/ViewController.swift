//
//  ViewController.swift
//  webview-app
//
//  Created by 夏凌晨 on 2020/01/01.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
  var webView: WKWebView!
  override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // 1
    let url = URL(string: "https://ioscreator.com")!
    webView.load(URLRequest(url: url))
    // 2
    let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
    toolbarItems = [refresh]
    navigationController?.isToolbarHidden = false
  }
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    title = webView.title
  }
}
