//
//  TidBitView.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import SwiftUI

struct TidBitView: View, TemplateAbstraction {
    @EnvironmentObject var singleWebView: SingleWebView
    var implementor: Implementor
    
    // Any Implementor can be paired with this TabView
    init(_ i: Implementor) {
        implementor = i
    }
    
    var body: some View {
        getWebView().navigationBarTitleDisplayMode(.inline)
    }
    
    func getWebView() -> WebView {
        singleWebView.webViewWithURL(implementor.get(.tidBit, in: .one))
    }
}

struct TidBitView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultTabView(TidBitImplementor(WhatAreAlgorithms()))
    }
}
