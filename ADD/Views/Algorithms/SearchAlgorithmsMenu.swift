//
//  SearchAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


struct SearchAlgorithmsMenu: View {
    let factory: ContentFactory
    
    @State var selection: String? = nil
    
    var body: some View {
        List {
            ForEach(SearchAlgorithm.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getSearchContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
                .onDisappear {
                    self.selection = nil
                }
            }
        }
        .id("idList")
        .navigationBarTitle("Search", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct SearchAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlgorithmsMenu(factory: ContentFactory())
    }
}
