//
//  TreeDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct TreeDSMenu: View {
    var body: some View {
        Form {
            // Binary Trees
            Text("Binary Search Tree")
            
            Text("Binary Tree")
            
            // Heaps
            Text("Heap")
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
