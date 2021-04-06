 //
 //  WebView.swift
 //  ADD
 //
 //  Created by Ignas Sireikis on 4/1/21.
 //
 import SwiftUI
 import WebKit
 
 
 // Singleton?
 // I should probably make this a Singleton officially
 // Reavaluate why this should be a singlton and which methods should be static.
 // Should I really do EnvironmentObject anywhere? Like i do in AlgorithmTabView?
 class SingleWebView: ObservableObject {
    private var webView: WebView?
    
    static var cache = [URL:WKWebView]()
    
    init() {
        loadDefaultPage()
    }
    
    public func webViewWithURL(_ url: URLRequest) -> WebView {
        webView?.changeRequestTo(url)
        return webView!
    }
    
    // Maybe I should preload all summary pages?
    private func loadDefaultPage() {
        //print("Performing Pre-load")
        let defaultFile = "www/Algorithms/Sort/InsertionSort/Summary/InsertionSortSummary_1"
        if let summaryURL = Bundle.main.url(forResource: defaultFile, withExtension: "html") {
            let defaultPage = URLRequest(url: summaryURL)
            webView = WebView(request: defaultPage)
            SingleWebView.cache[summaryURL] = WKWebView()
        }
    }
 }
 
 // Displays .html files inside of ViewTemplates
 
 // The issue with this method is that preload is gone. I only 'preloaded'
 // one page, which I call the default page (InsertionSortSummary_1).
 // I need to re-evaluate when I pre-load and what i should preload.
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
