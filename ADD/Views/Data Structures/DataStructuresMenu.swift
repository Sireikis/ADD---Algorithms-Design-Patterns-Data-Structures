//
//  DataStructuresMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct DataStructuresMenu: View {
    var body: some View {
        Form {
            NavigationLink(destination: LinearDSMenu()) {
                Text("Linear")
            }
            
            NavigationLink(destination: TreeDSMenu()) {
                Text("Tree")
            }
            
            NavigationLink(destination: HashBasedDSMenu()) {
                Text("Hash-based")
            }
            
            NavigationLink(destination: GraphDSMenu()) {
                Text("Graph")
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
