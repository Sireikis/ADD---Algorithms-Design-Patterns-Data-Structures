//
//  AlgorithmTabView.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


// Client + Refined Abstraction
// Need to probably abstract this all into a factory.
struct AlgorithmTabView: View, AlgorithmTemplateAbstraction {
    var implementor: AlgorithmImplementor
    
    // Any AlgorithmImplementor can be paired with this TabView
    init(_ i: AlgorithmImplementor) {
        implementor = i
    }
    
    var body: some View {
        TabView {
            // Summary Content
            
            // The webViewWithURL method returns a WebView, which is a WkWebView in UIViewRepresentable.
            // Each WKWebView displays the contents of a single .html file, which are cached.
            
            PagesBar(implementor: implementor, pageContent: .Summary)
                .tabItem {
                    Label("Summary", systemImage: "note.text")
                }
            
            //Text("Explanation")
            PagesBar(implementor: implementor, pageContent: .Explanation)
                .tabItem {
                    Label("Explanation", systemImage: "book.fill")
                }
            
            //Text("Code")
            PagesBar(implementor: implementor, pageContent: .Code)
                .tabItem {
                    Label("Code", systemImage: "curlybraces")
                }
            
            //Text("Examples")
            PagesBar(implementor: implementor, pageContent: .Example)
                .tabItem {
                    Label("Examples", systemImage: "info")
                }
        }
        
    }
}

struct PagesBar: View {
    @EnvironmentObject var singleWebView: SingleWebView
    var implementor: AlgorithmImplementor
    var pageContent: Page
    
    @State var pageSelected: FileNumber = .one
    
    var body: some View {
        VStack(spacing: 0) {
            // Only show 'More' page bar if there is more than one page.
            if implementor.isFileAvailable(.two, for: pageContent) {
                ScrollView(.horizontal) {
                    HStack {
                        //Spacer()
                        Text("More:")
                        ForEach(FileNumber.allCases, id: \.self) { page in
                            if implementor.isFileAvailable(page, for: pageContent) {
                                Button(action: {
                                    pageSelected = page
                                    print("\(page.rawValue)")
                                    print("\(pageSelected)")
                                }) {
                                    Text("\(page.rawValue)")
                                        .foregroundColor(.blue).padding(5)
                                }
                            }
                        }
                    }
                }
            }
            
            getWebView()
        }
    }
    
    func getWebView() -> WebView {
        switch pageContent {
        case .Summary:
            return singleWebView.webViewWithURL(implementor.getSummaryFor(file: pageSelected))
        case .Explanation:
            return singleWebView.webViewWithURL(implementor.getExplanationFor(file: pageSelected))
        case .Code:
            return singleWebView.webViewWithURL(implementor.getCodeExampleFor(file: pageSelected))
        case .Example:
            return singleWebView.webViewWithURL(implementor.getExampleProblemFor(file: pageSelected))
        }
    }
}


struct AlgorithmTabView_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmTabView(InsertionSortImplementor(InsertionSort()))
    }
}
