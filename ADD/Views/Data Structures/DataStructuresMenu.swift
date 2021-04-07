//
//  DataStructuresMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct DataStructuresMenu: View {
    var body: some View {
        List {
            NavigationLink(destination: LinearDSMenu()) {
                NavigationButton(description: "Linear", image: "arrow.left.and.right", imgForeground: .red)
            }
            
            NavigationLink(destination: TreeDSMenu()) {
                NavigationButton(description: "Tree", image: "leaf", imgForeground: .red)
            }
            
            NavigationLink(destination: HashBasedDSMenu()) {
                NavigationButton(description: "Hash-based", image: "grid", imgForeground: .red)
            }
            
            NavigationLink(destination: GraphDSMenu()) {
                NavigationButton(description: "Graph", image: "squareshape.controlhandles.on.squareshape.controlhandles", imgForeground: .red)
            }
        }
        .navigationBarTitle("Data Structures", displayMode: .inline)
    }
}

struct DataStructuresMenu_Previews: PreviewProvider {
    static var previews: some View {
        DataStructuresMenu()
    }
}
