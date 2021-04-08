//
//  SortAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


struct SortAlgorithmsMenu: View {
    let factory: ContentFactory = ContentFactory()
    
    var body: some View {
        List {
            ForEach(SortAlgorithm.allCases, id: \.self) { content in
                NavigationLink(destination: LazyView(DefaultTabView(factory.getSortContent(content)))) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Sort", displayMode: .inline)
    }
}

struct SortAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SortAlgorithmsMenu()
    }
}
