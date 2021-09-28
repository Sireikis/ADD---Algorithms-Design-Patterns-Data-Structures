//
//  SimpleDefaultTabView.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/23/21.
//

import SwiftUI


// Client + Refined Abstraction
// Used until Explanations, Examples, and multiple pages are introduced.
struct SimpleDefaultTabView: View, TemplateAbstraction {
    var implementor: Implementor
    
    // Any Implementor can be paired with this TabView
    init(_ i: Implementor) {
        implementor = i
    }
    
    var body: some View {
        TabView {
            SimplePage(implementor: implementor, pageContent: .Summary)
                .tabItem {
                    Label("Summary", systemImage: "note.text")
                }
            
            SimplePage(implementor: implementor, pageContent: .Code)
                .tabItem {
                    Label("Code", systemImage: "curlybraces")
                }
        }
    }
}

struct SimplePage: View {
    @EnvironmentObject var singleWebView: SingleWebView
    var implementor: Implementor
    var pageContent: Page
    
    @State var pageSelected: FileNumber = .one
    
    var body: some View {
        getWebView()
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

struct SimpleDefaultTabView_Previews: PreviewProvider {
    static var previews: some View {
        let filePath = ContentEnum.insertionSort.htmlFilePath
        let name = ContentEnum.insertionSort.name
        let content = ConcreteContent(filePath: filePath, name: name)
        
        SimpleDefaultTabView(ContentImplementor(content))
    }
}
