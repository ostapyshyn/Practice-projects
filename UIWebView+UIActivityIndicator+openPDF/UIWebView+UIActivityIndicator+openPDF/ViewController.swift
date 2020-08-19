//
//  ViewController.swift
//  UIWebView+UIActivityIndicator+openPDF
//
//  Created by Volodymyr Ostapyshyn on 18.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: nil)
        let url = URL(string: "https://www.google.com.ua/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
//        if let myURL = URL(string: "https://www.google.com.ua/") {
//            let request = URLRequest(url: myURL)
//            webView.load(request)
//        }

        
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
//
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
//        
        toolbarItems = [spacer, refresh]
        //
      navigationController?.isToolbarHidden = false
        
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
//    @objc func openTapped() {
//        let ac = UIAlertController(title: "Open page…", message: nil, preferredStyle: .actionSheet)
//        ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
//        ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .default, handler: openPage))
//        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
//        ac.popoverPresentationController?.barButtonItem = self.navigationItem.rightBarButtonItem
//        present(ac, animated: true)
//    }
    
//    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
//        goBackItem.isEnabled = false
//        goForwardItem.isEnabled = false
//    }
    
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        if webView.canGoBack {
//            goBackItem.isEnabled = true
//        } else if webView.canGoForward {
//            goForwardItem.isEnabled = true
//        }
//    }
//
//    func openPage(action: UIAlertAction) {
//        let url = URL(string: "https://" + action.title!)!
//        webView.load(URLRequest(url: url))
//    }
//
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
//        print(navigationAction)
//    }
//
//
//
//
//    @IBAction func goBackAction(_ sender: UIBarButtonItem) {
//        if webView.canGoBack {
//            webView.goBack()
//        }
//    }
//
//    @IBAction func goForward(_ sender: UIBarButtonItem) {
//        if webView.canGoForward {
//            webView.goForward()
//        }
//    }
//
//    @IBAction func refreshAction(_ sender: UIBarButtonItem) {
//        webView.reload()
//    }
    
    


}

