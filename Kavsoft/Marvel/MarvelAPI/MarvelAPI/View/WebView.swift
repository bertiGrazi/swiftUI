//
//  WebView.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 07/02/23.
//

import SwiftUI
import WebKit

struct WebViewCharacter: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: url))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        return 
    }
}

