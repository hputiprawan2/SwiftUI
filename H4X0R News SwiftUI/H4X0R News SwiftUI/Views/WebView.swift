//
//  WebView.swift
//  H4X0R News SwiftUI
//
//  Created by Hanna Putiprawan on 1/29/21.
//

import Foundation
import WebKit
import SwiftUI

// UIViewRepresentable is a UIView that represents UIKit view
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    // update view; what should be displayed
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
