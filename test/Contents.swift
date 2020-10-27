//: A UIKit based Playground for presenting user interface
  
import PlaygroundSupport

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
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()
