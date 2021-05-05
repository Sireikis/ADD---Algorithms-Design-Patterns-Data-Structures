//
//  SortAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


struct SortAlgorithmsMenu: View {
    let factory: ContentFactory
    
    @State var selection: String?
    
    var body: some View {
        List {
            ForEach(SortAlgorithm.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getSortContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Sort", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct SortAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SortAlgorithmsMenu(factory: ContentFactory())
    }
}
