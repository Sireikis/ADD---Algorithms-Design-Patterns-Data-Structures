//
//  TreeDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DS stands for Data Structure
struct TreeDSMenu: View {
    var body: some View {
        List {
            ForEach(TreeDS.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarTitle("Tree", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct TreeDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        TreeDSMenu()
    }
}
