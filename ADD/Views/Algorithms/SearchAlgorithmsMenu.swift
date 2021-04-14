//
//  SearchAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


struct SearchAlgorithmsMenu: View {
    var body: some View {
        List {
            ForEach(SearchAlgorithm.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarTitle("Search", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct SearchAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlgorithmsMenu()
    }
}
