//
//  TreeDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct TreeDSMenu: View {
    var body: some View {
        List {
            ForEach(TreeDS.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Tree", displayMode: .inline)
    }
}

struct TreeDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        TreeDSMenu()
    }
}
