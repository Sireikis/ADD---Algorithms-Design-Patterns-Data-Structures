//
//  SortAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI

struct SortAlgorithmsMenu: View {
    var body: some View {
        List {
            ForEach(SortAlgorithm.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
            
            Section(header: Text("Test HTML")) {
                // Need to figure out how to ForEach NavigationLinks
                NavigationLink(destination: DefaultTabView(ContentImplementorProxy(content: .insertionSort))) {
                    NavigationButton(description: "Insertion Sort", image: "arrow.up.arrow.down", imgForeground: .green)
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
