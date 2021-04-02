 //
 //  WebView.swift
 //  ADD
 //
 //  Created by Ignas Sireikis on 4/1/21.
 //
 import SwiftUI
 import WebKit
 
 
 // Displays .html files inside of ViewTemplates
 struct WebView: UIViewRepresentable {
    let request: URLRequest
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<WebView>) {
        uiView.load(request)
    }
 }
 
/*
  // Canvas won't load from file?
  struct ContentView: View {
     // Load an html file
     let testHTML = Bundle.main.url(forResource: "www/Test", withExtension: "html")
     var body: some View {
         WebView(request: URLRequest(url: testHTML!))
     }
     
  }
  
  struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
  }
  */
