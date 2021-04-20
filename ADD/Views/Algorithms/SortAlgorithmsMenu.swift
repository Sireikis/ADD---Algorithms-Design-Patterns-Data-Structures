//
//  SortAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


struct SortAlgorithmsMenu: View {
    let factory: ContentFactory
    
    // Fixes selected link staying grey when navigating back.
    @State var selection: String? = nil
    
    var body: some View {
        List {
            ForEach(SortAlgorithm.allCases, id: \.self) { content in
                NavigationLink(destination: LazyView(DefaultTabView(factory.getSortContent(content))), tag: content.description, selection: $selection) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }.onDisappear {
                    self.selection = nil
                }
            }
        }
        .id("idList")
        .navigationBarTitle("Sort", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct SortAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SortAlgorithmsMenu(factory: ContentFactory())
    }
}
