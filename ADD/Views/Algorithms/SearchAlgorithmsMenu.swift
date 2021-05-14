//
//  SearchAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


struct SearchAlgorithmsMenu: View {
    let factory: ContentFactory
    
    @State var selection: String?
    
    let content: [ContentEnum] = [
        .binarySearch,
        .breadthFirstSearch,
        .depthFirstSearch,
    ]
    
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
        .navigationBarTitle("Search", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct SearchAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlgorithmsMenu(factory: ContentFactory())
    }
}
