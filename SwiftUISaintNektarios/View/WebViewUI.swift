//
//  WebViewUI.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import UIKit
import SwiftUI
import WebKit
struct WebViewUI:UIViewRepresentable{
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.scrollView.isScrollEnabled = false
        
    }
    
    func makeUIView(context: Context) ->  WKWebView {
        let webView = WKWebView(frame: .zero)
        let filename = Bundle.main.path(forResource: "books", ofType: "pdf")!
        let urlMain = URL(fileURLWithPath:filename)
        webView.load(URLRequest(url: urlMain))
        return webView
    }
}
