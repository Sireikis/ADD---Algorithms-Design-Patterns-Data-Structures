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
        let filePath = TidBits.whatAreAlgorithms.htmlFilePath
        let name = TidBits.whatAreAlgorithms.name
        let content = ConcreteTidBit(filePath: filePath, name: name)
        
        TidBitView(TidBitImplementor(content))
    }
}
