//
//  AlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI

// Using wiki Algo Types
struct AlgorithmsMenu: View {
    var body: some View {
        Form {
            Section(header: Text("Alternate ways of ordering")) {
                Text("By Design Paradigm")
                
                Text("By Implementation")
                
                Text("By Complexity")
            }
            
            NavigationLink(destination: SortAlgorithmsMenu()) {
                Text("Sort")
            }
            
            Text("Search")
        }
        .navigationBarTitle("Algorithms", displayMode: .inline)
    }
}



struct AlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmsMenu()
    }
}
