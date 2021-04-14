//
//  GraphDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DS stands for Data Structure
struct GraphDSMenu: View {
    var body: some View {
        List {
            ForEach(GraphDS.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarTitle("Graph", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct GraphDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        GraphDSMenu()
    }
}
