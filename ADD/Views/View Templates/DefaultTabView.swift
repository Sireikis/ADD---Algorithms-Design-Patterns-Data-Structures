//
//  DefaultTabView.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//
import SwiftUI

// Deprecated for now.

// Client + Refined Abstraction
// Need to probably abstract this all into a factory.
struct DefaultTabView: View, TemplateAbstraction {
    var implementor: Implementor
    
    // Any Implementor can be paired with this TabView
    init(_ i: Implementor) {
        implementor = i
    }
    
    var body: some View {
        TabView {
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
    var implementor: Implementor
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
            return singleWebView.webViewWithURL(implementor.get(.summary, in: pageSelected))
        case .Explanation:
            return singleWebView.webViewWithURL(implementor.get(.explanation, in: pageSelected))
        case .Code:
            return singleWebView.webViewWithURL(implementor.get(.codeExample, in: pageSelected))
        case .Example:
            return singleWebView.webViewWithURL(implementor.get(.exampleProblem, in: pageSelected))
        }
    }
}


struct DefaultTabView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultTabView(ContentImplementor(InsertionSort()))
    }
}
