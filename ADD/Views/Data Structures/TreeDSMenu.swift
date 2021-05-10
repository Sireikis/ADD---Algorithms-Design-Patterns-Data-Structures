//
//  TreeDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DS stands for Data Structure
struct TreeDSMenu: View {
    let factory: ContentFactory
    
    @State var selection: String?
    
    var body: some View {
        List {
            ForEach(TreeDS.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getTreeDSContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Tree", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct TreeDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        TreeDSMenu(factory: ContentFactory())
    }
}
