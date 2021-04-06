//
//  GraphDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct GraphDSMenu: View {
    var body: some View {
        Form {
            Text("Adjacency List")
            
            Text("Graph")
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Graph", displayMode: .inline)
    }
}

struct GraphDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        GraphDSMenu()
    }
}
