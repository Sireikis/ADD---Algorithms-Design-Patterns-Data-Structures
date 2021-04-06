//
//  StructuralDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DP stands for Design Pattern
struct StructuralDPMenu: View {
    var body: some View {
        Form {
            Text("Adapter")
            
            Text("Bridge")
            
            Text("Composite")
            
            Text("Decorator")
            
            Text("Facade")
            
            Text("Flyweight")
            
            Text("Proxy")
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Structural", displayMode: .inline)
    }
}

struct StructuralDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        StructuralDPMenu()
    }
}
