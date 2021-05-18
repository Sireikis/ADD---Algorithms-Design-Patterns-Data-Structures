//
//  SimpleContentSelectionView.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/14/21.
//

import SwiftUI


// Generates a view containing a list of the given content
struct SimpleContentSelectionView: View {
    let title: String
    let factory: ContentFactory
    let content: [ContentEnum]
    
    @State var selection: String?
    
    var body: some View {
        List {
            ForEach(content, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle(title, displayMode: .inline)
    }
}

struct BasicContentSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleContentSelectionView(title: "Basic", factory: ContentFactory(), content: [.abstractFactory])
    }
}
