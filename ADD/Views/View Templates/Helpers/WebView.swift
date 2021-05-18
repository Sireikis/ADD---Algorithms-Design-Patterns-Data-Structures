 //
 //  WebView.swift
 //  ADD
 //
 //  Created by Ignas Sireikis on 4/1/21.
 //
 
 import SwiftUI
 import WebKit
 
 
 class SingleWebView: ObservableObject {
    private var webView: WebView?
    
    static var cache = [URL:WKWebView]()
    
    init() {
        loadDefaultPage()
    }
    
    // The webViewWithURL method returns a WebView, which is a WkWebView in UIViewRepresentable.
    // Each WKWebView displays the contents of a single .html file, which are cached.
    func webViewWithURL(_ url: URLRequest) -> WebView {
        webView?.changeRequestTo(url)
        return webView!
    }
    
    // Pre-loading InsertionSortSummary_1, choice is arbitrary
    private func loadDefaultPage() {
        let defaultFile = "www/Algorithms/Sort/Insertion Sort/Summary/InsertionSortSummary_1"
        if let summaryURL = Bundle.main.url(forResource: defaultFile, withExtension: "html") {
            let defaultPage = URLRequest(url: summaryURL)
            webView = WebView(request: defaultPage)
            SingleWebView.cache[summaryURL] = WKWebView()
        }
    }
 }
 
 // Displays .html files inside of ViewTemplates
 struct WebView: UIViewRepresentable {
    var request: URLRequest
    
    mutating func changeRequestTo(_ url: URLRequest) {
        request = url
    }
    
    func makeUIView(context: Context) -> WKWebView {
        // Caching WkWebViews, each containing a single .html file.
        guard let url = request.url else { fatalError() }
        
        if let webView = SingleWebView.cache[url] {
            return webView
        }
        
        let webView = WKWebView()
        SingleWebView.cache[url] = webView

        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<WebView>) {
        uiView.load(request)
    }
 }
